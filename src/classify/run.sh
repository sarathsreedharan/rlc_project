#!/bin/sh
~/Desktop/FAST-DOWNWARD/fast-downward.py $1 $2 --search "astar(lmcut())" | grep "(1)"
