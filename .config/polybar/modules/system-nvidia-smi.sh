#!/bin/sh
string=$(cat ~/.cache/wal/colors | head -2 | tail -1)

if ! gpuuti=$(nvidia-smi --format=nounits,csv,noheader --query-gpu=utilization.gpu | xargs echo); then
    gpuuti=0
fi
if [ "$gpuuti" -gt 0 ]; then
    echo "$gpuuti%"
fi
