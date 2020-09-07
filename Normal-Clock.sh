#!/bin/bash

midnight=$(date -d "00:00:00" "+%s.%N")
not_normal_s_total=$(date "+%s.%N")
not_normal_s_today=$(echo "scale=3; ($not_normal_s_total - $midnight) / 1" | bc)
normal_s_today=$(printf "%05d" $(echo "$not_normal_s_today * 100000 / 86400" | bc))
echo "${normal_s_today:0:1} : ${normal_s_today:1:2} : ${normal_s_today:3:4}"
