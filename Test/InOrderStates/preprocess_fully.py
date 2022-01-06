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
#      print(strs)
      if len(strs) == 2 and strs[0][0] == "0":
        addr = int(strs[0], 16)
        addr = addr >> 2
        writeL.write(str(hex(addr)) + " " + strs[1] + "\n")
      elif len(strs) == 5:
        writeL.write(line)
