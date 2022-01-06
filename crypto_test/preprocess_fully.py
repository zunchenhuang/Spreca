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

with open(writeLog, "w") as writeL:
  with open(readLog, "r") as readL:
    for line in readL:
      strs = line.split()
      # print(strs)
      if len(strs) == 6:
        print(strs)
        addr = int(strs[1], 16)
        addr = addr >> 6
        writeL.write(strs[0] + " " + str(hex(addr)) + " " + strs[2] + " " + strs[3] + " " + strs[4] + " " + strs[5] + "\n")
      elif len(strs) == 14:
        # print(strs)
        addrConcrete = int(strs[2], 16) >> 6
        addrB = int(strs[5], 16) >> 6
        addrE = int(strs[7], 16) >> 6
        assert addrB <= addrE
        stepSize = int(strs[9], 10)
        assert stepSize >= 1
        strs[2] = str(hex(addrConcrete))
        strs[5] = str(hex(addrB))
        strs[7] = str(hex(addrE))
        strs[9] = str(1)
        # print(strs)
        writeL.write(' '.join(strs) + "\n")
      elif len(strs) == 5:
        writeL.write(line)
      
