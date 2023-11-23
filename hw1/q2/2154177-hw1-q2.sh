#!/bin/bash

function showUptime(){
    uptime
}

endtime=$((SECONDS + 10*16))  # 执行16次

while [ $SECONDS -lt $endtime ]; do
    showUptime | tee -a 2154177-hw1-q2.log
    sleep 10
done