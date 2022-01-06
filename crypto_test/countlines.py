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

lineSet = set()

readLogPath = sys.argv[1]
# writeLogPath = sys.argv[2]

CUR_FOLDER = os.path.dirname(os.path.abspath(__file__))
readLog = os.path.join(CUR_FOLDER, readLogPath)
# writeLog = os.path.join(CUR_FOLDER, writeLogPath)
print(readLog)
# print(writeLog)

with open(readLog, "r") as readL:
  for line in readL:
    strs = line.split()
    if len(strs) == 6:
      addr = int(strs[1], 16)
      lineSet.add(addr)
    if len(strs) == 14:
      addr = int(strs[2], 16)
      lineSet.add(addr)

print("Lines/Addrs Taken: " + str(len(lineSet)))
