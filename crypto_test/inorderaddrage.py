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
addr = sys.argv[2]
start = sys.argv[3]
length = sys.argv[4]

CUR_FOLDER = os.path.dirname(os.path.abspath(__file__))
readLog = os.path.join(CUR_FOLDER, readLogPath)
print(readLog)
LeakingSet = set()
#hot-miss = []
#cold-miss = []
counter = 0
print(addr)

with open(readLog, "r") as readL:
  for line in readL:
    strs = line.split()
#    if len(strs) == 3:
#      continue
#    elif strs[0] == 'Hot-Miss':
#      hot-miss.append(strs[1])
#    elif strs[0] == 'Cold-Miss':
#      cold-miss.append(strs[1])
    if strs[0] == addr:
      if counter > int(start+length):
        break
      if counter >= int(start) and counter < (int(start)+int(length)):
        print(strs[1], end = ' | ')
#        print(counter)
#        print(start+length)
      counter = counter+1
  print('\n')
            
