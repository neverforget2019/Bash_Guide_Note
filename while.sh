#!/bin/bash
##########################################################
# while.sh
# While循环用法
##########################################################


##########################################################
# 基本用法
## 死循环
while true
do
    sleep 1
    break
done
while : # 同上
do
    sleep 1
    break
done
##########################################################

##########################################################
# 遍历数字
echo "####################";
i=0
while [[ $i -lt 5 ]]
do
    echo $i;
    ((i++))
done

echo "--------------------";
i=0
while [[ $i -lt 5 ]] && [[ $i -ne 3 ]]
do
    echo $i;
    ((i++))
done

echo "--------------------";
i=0
while [[ $i -lt 5 ]]
do
    ((i++))
    if [[ $i -eq 3 ]]; then
        continue
    fi
    echo $i;
done
echo "####################";
##########################################################

##########################################################
# 遍历文件
cat /etc/passwd | while read line; do
    echo "$line" > /dev/null;
done
while read line; do # 功能同上
    echo "$line" > /dev/null;
done < /etc/passwd
# 遍历文件，并拆分行赋值给变量
tail -2 /etc/passwd | while read line; do
    username=$(echo "$line" | awk -F':' '{print $1}')
    login_shell=$(echo "$line" | awk -F':' '{print $NF}')
    homedir=$(echo "$line" | awk -F':' '{print $6}')
    echo "username: $username login_shell: $login_shell homedir: $homedir";
done
##########################################################
