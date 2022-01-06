#!/usr/bin/python

import os
import sys
from collections import namedtuple
import math

readLogPath = sys.argv[1]
setNum = sys.argv[2]
windowSize = sys.argv[3]


CUR_FOLDER = os.path.dirname(os.path.abspath(__file__))
readLog = os.path.join(CUR_FOLDER, readLogPath)

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
    for line in readL:
        strs = line.split()
        elif len(strs) == 5:
            HB.append((strs[2], strs[4])) 

closure = transitive_closure(HB)
print(closure)
