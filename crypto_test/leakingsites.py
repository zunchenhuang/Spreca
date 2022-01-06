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


CUR_FOLDER = os.path.dirname(os.path.abspath(__file__))
readLog = os.path.join(CUR_FOLDER, readLogPath)
print(readLog)
LeakingSet = set()
 

with open(readLog, "r") as readL:
  for line in readL:
    strs = line.split()
    if len(strs) == 0:
      continue
    if strs[0] == 'Extra':
      #print(strs)
      LeakingSet.add(strs[7])

for item in LeakingSet:
  print(item)
  
print(len(LeakingSet))
