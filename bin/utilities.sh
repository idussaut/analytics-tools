#!/usr/bin/env bash

################################################################################
# Colour definitions
################################################################################
RLG='\e[0;36m' # Cyan
INF='\e[0;32m' # Green
STP='\e[1;93m' # Yellow
ERR='\e[0;31m' # Red
NON='\e[0;0m'  # Normal

################################################################################
# Write information (no values)
################################################################################
function info() {
  d=`date '+%Y-%m-%d %H:%M:%S'`
  echo -e "${INF}[${d}] $* $NOC${NON}"
}

################################################################################
# Write Error (no values)
################################################################################
function error() {
  d=`date '+%Y-%m-%d %H:%M:%S'`
  echo -e "${ERR}[${d}] ERROR: $* $NOC${NON}"
}

################################################################################
# Write step title
################################################################################
step=1
function step() {
  d=`date '+%Y-%m-%d %H:%M:%S'`
  echo
  echo -e "${STP}======================================================================"
  echo -e "${STP}[${d}] Step $step"
  echo -e "${STP}[${d}] $* $NOC"
  echo -e "${STP}======================================================================${NON}"
  step=$((step+1))
}