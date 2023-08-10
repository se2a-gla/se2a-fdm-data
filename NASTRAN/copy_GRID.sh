#!/bin/bash
#
# How to:
# 1. open with bash shell
# 2. make executable (chmod u+x copy_GRID.sh)
# 3. call bash script with search path and destination/copy path using forward slashes and "" (e.g.: ./copy_GRID.sh "/e/PowerFolder/SE2A_ICA_B_Exchange (Maren Evers)/SE2A_MR_BWD_swept_V1_4Sep2020/DMM" "/e/RedmineRepo/ARGO/internal/WP_1.2_Flight_Mechanics_Modeling/NASTRAN2mat_scripts/GRID_SE2A/"


SEARCH_PTH=$1
COPY_PTH=$2

/usr/bin/find "${SEARCH_PTH}" -name '*GRID*' -exec cp {} "${COPY_PTH}" \;
