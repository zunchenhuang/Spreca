#!/usr/bin/python

import os
import subprocess
from subprocess import STDOUT
import glob
import os
import requests
import sys
import re
import shutil

readLogPath = sys.argv[1]
writeLogPath = sys.argv[2]

CUR_FOLDER = os.path.dirname(os.path.abspath(__file__))
readLog = os.path.join(CUR_FOLDER, readLogPath)
writeLog = os.path.join(CUR_FOLDER, writeLogPath)
print(readLog)
print(writeLog)
InstToVisitedTime = {}
AddrToLastInst = {}
DepSet = set()
InstSet = set()

# Add insts ID to set
with open(readLog, "r") as readL:
  for line in readL:
    strs = line.split()
    if len(strs) == 6:
      ID = strs[3]
      InstSet.add(ID)
    if len(strs) == 14:
      ID = strs[11]
      InstSet.add(ID)

print(InstSet)

with open(writeLog, "w") as writeL:
  with open(readLog, "r") as readL:
    for line in readL:
      strs = line.split()
#      print(strs)
      if len(strs) == 6:
        ID = strs[3]
        InstToVisitedTime[ID] = InstToVisitedTime.get(ID,-1) + 1;
        ID_Index = str(ID) + "_" + str(InstToVisitedTime[ID])
        strs[3] = ID_Index
        writeL.write(' '.join(strs) + "\n")
        if InstToVisitedTime[ID] != 0:
            writeL.write("DDEP: SrcID: " + ID + "_" + str(InstToVisitedTime[ID]-1) + " DestID: " + ID_Index + "\n")
        if strs[1] not in AddrToLastInst:
          AddrToLastInst[strs[1]] = ID_Index
        else:
          key = AddrToLastInst[strs[1]] + ID_Index
          if key not in DepSet:
            DepSet.add(key)
            writeL.write("DDEP: SrcID: " + AddrToLastInst[strs[1]] + " DestID: " + ID_Index + "\n")
          AddrToLastInst[strs[1]] = ID_Index
        # print(strs[0] + " " + strs[1] + " " + strs[2] + " " + ID + "\n")
      
      # Symbolic values process
      elif len(strs) == 14:
        ID = strs[11]
        InstToVisitedTime[ID] = InstToVisitedTime.get(ID,-1) + 1;
        ID_Index = str(ID) + "_" + str(InstToVisitedTime[ID])
        strs[11] = ID_Index
        writeL.write(' '.join(strs) + "\n")
        if InstToVisitedTime[ID] != 0:
            writeL.write("DDEP: SrcID: " + ID + "_" + str(InstToVisitedTime[ID]-1) + " DestID: " + ID_Index + "\n")
        addrB = int(strs[5], 16)
        addrE = int(strs[7], 16)
        stepSize = int(strs[9], 10)
        print("Symbolic value addr begin end stepSize are : " + str(hex(addrB)) + " "  + str(hex(addrE)) + " "  + str(stepSize))
        for addr in range(addrB, addrE+stepSize, stepSize):
          addrHex = str(hex(addr))
          if addrHex not in AddrToLastInst:
            AddrToLastInst[addrHex] = ID_Index
          else:
            key = AddrToLastInst[addrHex] + ID_Index
            if key not in DepSet:
              DepSet.add(key)
              print("Symbolic adding depedencies: " + "DDEP: SrcID: " + AddrToLastInst[addrHex] + " DestID: " + ID_Index)
              writeL.write("DDEP: SrcID: " + AddrToLastInst[addrHex] + " DestID: " + ID_Index + "\n")
              AddrToLastInst[addrHex] = ID_Index

      elif len(strs) == 5:
        SrcID = strs[2]
        DestID = strs[4]
        if SrcID not in InstSet or DestID not in InstSet or SrcID not in InstToVisitedTime.keys():
            continue
        if SrcID != DestID and SrcID != '0':
            SrcID = strs[2] + "_" + str(InstToVisitedTime[SrcID])
            DestID = strs[4] + "_" + str(InstToVisitedTime[DestID])
            key = SrcID+DestID
            if key not in DepSet:
              DepSet.add(key)
              writeL.write(strs[0] + " " + strs[1] + " " + SrcID + " " + strs[3] + " " + DestID + "\n")

