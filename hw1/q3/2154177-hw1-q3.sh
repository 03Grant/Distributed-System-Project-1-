#!/bin/bash

fileName=$1
target="2154177-hw1-q3.log"

# 查看a.sh的总行数
line_count=$(wc -l $fileName | awk '{print $1}')

# 输入总行数到文件
echo "$line_count" >> $target

# 查看a.sh的总字符数
char_count=$(wc -c $fileName | awk '{print $1}')

# 输入总字符数到文件
echo "$char_count" >> $target

# echo "The total number of lines in a.sh is $line_count"
# echo "The total number of characters in a.sh is $char_count"

# 获取第一行的时间戳
start_time=$(awk 'NR==1{print $1}' $fileName)

# 获取最后一行的时间戳
end_time=$(awk 'END{print $1}' $fileName)

# 将时间戳转换为秒
start_time_seconds=$(date -d"$start_time" +%s)
end_time_seconds=$(date -d"$end_time" +%s)

# 计算差值
time_difference=$((end_time_seconds-start_time_seconds))

# 输入时间差到文件
echo "$time_difference" >> $target

# echo $time_difference


# 计算每一列的总和
sums_and_count=$(awk '{sum1+=$9; sum2+=$10; sum3+=$11} END{print sum1, sum2, sum3, NR}' $fileName)

# 将结果分解为四个变量
read sum1 sum2 sum3 count <<< "$sums_and_count"

# echo $sum1 $sum2 $sum3
# 计算平均值
avg1=$(echo "scale=5; $sum1 / $count" | bc -l)
avg2=$(echo "scale=5; $sum2 / $count" | bc -l)
avg3=$(echo "scale=5; $sum3 / $count" | bc -l)


echo "$avg1 $avg2 $avg3" >> $target

# echo "The average of the first column is $avg1"
# echo "The average of the second column is $avg2"
# echo "The average of the third column is $avg3"

