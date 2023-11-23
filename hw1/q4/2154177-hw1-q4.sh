#!/bin/bash


# 检查参数数量是否正确
if [ "$#" -ne 1 ]; then
    echo "need 1 parameter."
    exit 1
fi

# 获取倒计时时间
countdown_time=$1

# 开始倒计时
while [ $countdown_time -gt 0 ]; do
    echo "剩余时间：$countdown_time 秒"
    sleep 10
    let countdown_time=countdown_time-10
done

echo "剩余0秒"
