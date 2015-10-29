#!/bin/sh
# Displays the terminal colors.
# 显示终端色彩表
mod=$1
color () {
  printf "\e[01;$mod;38;5;%sm%4s" $1 $1;
}
# 基本 16 色
for i in 0 1 2 3 4 5 6 7; do
  color "$i"
done
echo
for i in 8 9 10 11 12 13 14 15; do
  color "$i"
done
echo
echo
for k in 0 1;do 
  for j in `seq $((16+k*18)) 36 $((196+k*18))`;do 
    for i in `seq $j $((j+17))`; do 
      printf "\e[01;$1;38;5;%sm%4s" $i $i;
    done;echo;
  done;
done
echo
# 灰色
i=232
while [ "$i" -lt 255 ]; do
  color $i
  : $((i=i+1))
done
echo
