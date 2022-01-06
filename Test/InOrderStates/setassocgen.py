#!/usr/bin/python

import os
import subprocess
from subprocess import STDOUT
import glob
import os
import requests
import sys
import re
import math

import shutil

readLogPath = sys.argv[1]
assoc = sys.argv[2]
cachesize = sys.argv[3]
blocksize = sys.argv[4]
readFile = readLogPath[0:-4]
print(readFile)
setSize = int(cachesize)/int(blocksize)/int(assoc)
setSize = int(setSize)
setBit = int(math.log2(setSize))
print("Set bit is : " +str(bin(setBit)))
setAndBit = (1 << setBit) - 1
print("Set size is : " +str(setSize))
print("Set bit is : " +str(bin(setAndBit)))
CUR_FOLDER = os.path.dirname(os.path.abspath(__file__))
readLog = os.path.join(CUR_FOLDER, readLogPath)

addrSets = []
states = []
allAddrs = set()

for i in range(0, setSize):
  print(i)
  addrSets.append(set())
print(len(addrSets))
print(readLog)

traceAddr = []
traceInsts = []
hotmisses = []
coldmisses = []
hotmisses.append("0")
coldmisses.append("0")
with open(readLog, "r") as readL:
  lines = readL.readlines()
  for line in lines:
    strs = line.split()
    if strs[0] == "Instruction":
        traceInsts.append(line)
    if strs[0][0] == "0" and strs[1] == "0":
      traceAddr.append(strs[0])
    elif strs[0][0] == "0":
      addr = int(strs[0], 16)
      allAddrs.add(addr)
#      addr = addr >> int(math.log2(int(blocksize)))
#      print(strs)
      setIndex = addr & setAndBit
      addr = addr >> setBit
#      print ("Set index is : " + str(setIndex) + " ~ tag is : " + str(hex(addr)))
      addrSets[setIndex].add(addr)
      

counter = 0
state = {}
states.append(state)
for addrSet in addrSets:
    setState = {}
    states[0][counter] = setState
    print ("Set " + str(counter) + " Tags are : ")
    for addr in addrSet:
        print(addr, end='\t')
        states[0][counter][addr] = -1
    print()
    counter = counter + 1

for state in states:
    print(state)
    
#for addr in traceAddr:
#  print(addr)
#print (len(traceAddr))

counter = 0

for accAddr in traceAddr:
    newState = {}
    for i in range(0, setSize):
        setState = {}
        newState[i] = setState

#    accAddr = int(accAddr, 16) >> int(math.log2(int(blocksize)))
    setIndex = int(accAddr, 16) & setAndBit
    accTag = int(accAddr, 16) >> setBit
    accAgePrev = states[counter][setIndex][accTag]
    print("Accessed Set Index and Tag are : " + str(setIndex) + " " + str(accTag) + " prev Age is : " + str(accAgePrev))
    if accAgePrev == -1:
        hotmisses.append("0")
        coldmisses.append("1")
    elif accAgePrev == assoc:
        hotmisses.append("1")
        coldmisses.append("0")
    else:
        hotmisses.append("0")
        coldmisses.append("0")
    for tag in states[counter][setIndex].keys():
        if tag == accTag:
            newState[setIndex][tag] = 0
        elif states[counter][setIndex][tag] == assoc or states[counter][setIndex][tag] == -1 or (states[counter][setIndex][tag] >= accAgePrev and accAgePrev != -1):
            newState[setIndex][tag] = states[counter][setIndex][tag]
        else:
            newState[setIndex][tag] = states[counter][setIndex][tag] + 1

    for i in range(0, setSize):
        if i != setIndex:
            newState[i] =  states[counter][i].copy()
    states.append(newState)
    counter += 1

    print(newState)

print(len(states))
counter = 0
for addr in allAddrs:
    print(hex(addr))
items = readFile.split('_')
output = ""
for item in items:
    if not item.isnumeric():
        output = output + item + "_"
    else:
        break
print(output)
with open( output +str(cachesize)+ "_"+ str(assoc) + "_inorderstates.txt", "w") as writeL:
    for state in states:
        writeL.write(traceInsts[counter])
        writeL.write("Hot-Miss: " + hotmisses[counter] + "\n")
        writeL.write("Cold-Miss: " + coldmisses[counter] + "\n")
        counter = counter + 1
        for addr in allAddrs:
            writeL.write(str(hex(addr)) + " ")
#            addr = addr >> int(math.log2(int(blocksize)))
            setIndex = addr & setAndBit
            accTag = addr >> setBit
            print(str(setIndex) + " " + str(accTag))
            writeL.write(str(state[setIndex][accTag]) + "\n")
