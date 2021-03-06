#!/usr/bin/python

import os
import sys
from collections import namedtuple
import math

readLogPath = sys.argv[1]
setNum = sys.argv[2]
windowSize = sys.argv[3]

# Type: load/store
MemOp = namedtuple("MemOp", "Type Set Tag ID DebugInfo")
# All MemOps
memOpStrs = []
memOps = []
# Set of mem operations
cacheSetOutput = {}
cacheSetIDs = {}
# Initilization
for i in range(0, int(setNum)):
    cacheSetOutput[i] = []
    cacheSetIDs[i] = set()

CUR_FOLDER = os.path.dirname(os.path.abspath(__file__))
readLog = os.path.join(CUR_FOLDER, readLogPath)
IDtoMemOp = {}

HB = []

def transitive_closure(a):
    closure = set(a)
    while True:
        new_relations = set((x,w) for x,y in closure for q,w in closure if q == y)
        closure_until_now = closure | new_relations
        if closure_until_now == closure:
            break
        closure = closure_until_now
    return closure


mask = (1 << int(math.log2(int(setNum)))) - 1
print(mask)

IDtoDeps = {}
with open(readLog, "r") as readL:
    currOp = dict()
    currID = ""
    index = 0
    for line in readL:
        strs = line.split()
#      print(strs)
        if len(strs) == 6:
            addrStr = strs[1]
            memOpStrs.append(line)
            #memOps.append(MemOp(strs[0], strs[1], strs[3], strs[5]))
            addr = int(addrStr, 16)
            setIndex = addr & mask
            tag = addr >> int(math.log2(int(setNum)))
            currID = strs[3]
            currOp = {"Index":index, "Type":strs[0], "Set":setIndex, "Tag":hex(tag), "ID":strs[3], "DebugInfo":strs[5]}
            # print(currOp)
            memOps.append(currOp)
            cacheSetIDs[setIndex].add(currID)
            index += 1
        elif len(strs) == 5:
            if currID not in IDtoDeps.keys():
                IDtoDeps[currID] = []
            # print((strs[2], strs[4]))
            IDtoDeps[currID].append((strs[2], strs[4]))
            # HB.append((strs[2], strs[4])) 

# print(memOps)
# print(IDtoDeps)

for op in memOps:
    localHB = []
    localCounter = int(windowSize)
    index = op["Index"]
    ID = op["ID"]
    setIndex = op["Set"]
    print(index, ID, setIndex)
    if ID in IDtoDeps.keys():
        for dep in IDtoDeps[ID]:
            localHB.append(dep)
    while index > 0 and localCounter > 1:
        index -= 1
        prevOp = memOps[index]
        prevID = prevOp["ID"]
        prevSetIndex = prevOp["Set"]
        localCounter -= 1
        if prevID in IDtoDeps.keys():
            for dep in IDtoDeps[prevID]:
                if dep not in localHB:
                    localHB.append(dep)
    
    localWindowSize =  int(windowSize) - localCounter
    print(op["Index"] - index, localWindowSize)
    print(localHB)
    
    index = op["Index"] - int(windowSize)
    while index >= 0:
        prevOp = memOps[index]
        prevSetIndex = prevOp["Set"]
        if prevSetIndex == setIndex:
            print("DDEP: SrcID: " + prevOp["ID"] + " DestID: " + ID + "\n")
            if (prevOp["ID"], ID) not in localHB: 
                localHB.append((prevOp["ID"], ID))
            break
        index -= 1
    
    localHB_trans = transitive_closure(localHB)
    print(localHB_trans)
    cacheSetOutput[setIndex].append(op["Type"] + " " + str(op["Tag"]) + " ID: " + ID + " @Ln,Col: " + op["DebugInfo"] + "\n")
    for hb in localHB_trans:
        if hb[0] in cacheSetIDs[setIndex] and hb[1] in cacheSetIDs[setIndex] and hb[1] == ID:
            cacheSetOutput[setIndex].append("DDEP: SrcID: " + hb[0] + " DestID: " + hb[1] + "\n")
    
readLogName = readLogPath.split(".")[0]
print(readLogName)
readLogNamePure = readLogName.split("/")[-1]
readLogNamePure = readLogNamePure[0:readLogNamePure.rfind("_")]
print(readLogNamePure)
for i in range(0, int(setNum)):
    writeLog = readLogName + "/" +readLogNamePure + "_windSize"+ windowSize + "_" + setNum + "sets_" + str(i) + "_processed.log"
    with open(writeLog, "w") as writeL:
        for line in cacheSetOutput[i]:
            writeL.write(line)
    writeL.close()


# print(HB)
# print(len(HB))
# HB_trans = transitive_closure(HB)
# HB_trans_map = {}
# HA_trans_map = {}
# # for hb in HB_trans:
# #     if hb[0] in HB_trans_map.keys():
# #         HB_trans_map[hb[0]].append(hb[1])
# #     else:
# #         HB_trans_map[hb[0]] = [hb[1]]
# # print(HB_trans_map)

# for hb in HB_trans:
#     if hb[0] != hb[1]:
#         if hb[1] in HA_trans_map.keys():
#             HA_trans_map[hb[1]].append(hb[0])
#         else:
#             HA_trans_map[hb[1]] = [hb[0]]
# print(HA_trans_map)



# for line in memOps:
#      strs = line.split()
#      addrStr = strs[1]
#      ID = strs[3]
#      addr = int(addrStr, 16)
#      setIndex = addr & mask
#      cacheSetIDs[setIndex].add(ID)

# print(cacheSetIDs)

# for line in memOps:
#      strs = line.split()
#      addrStr = strs[1]
#      ID = strs[3]
#      addr = int(addrStr, 16)
#      setIndex = addr & mask
#      tag = addr >> int(math.log2(int(setNum)))
#      print([hex(addr), setIndex, hex(tag)])
#      print([bin(addr), setIndex, bin(tag)])
#      cacheSetOutput[setIndex].append(strs[0] + " " + str(hex(tag)) + " " + strs[2] + " " + strs[3] + " " + strs[4] + " " + strs[5])
#      if ID in HA_trans_map.keys():
#          for item in HA_trans_map[ID]:
#              if item in cacheSetIDs[setIndex]:
#                  cacheSetOutput[setIndex].append("DDEP: SrcID: " + str(item) + " DestID: " + ID)

# readLogName = readLogPath.split(".")[0]
# print(readLogName)
# for i in range(0, int(setNum)):
#     writeLog = readLogName + "_" + setNum + "sets_" + str(i) + ".log"
#     with open(writeLog, "w") as writeL:
#         for line in cacheSetOutput[i]:
#             writeL.write(line+"\n")
#     writeL.close()
