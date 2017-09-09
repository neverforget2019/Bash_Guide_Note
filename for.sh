#!/bin/bash
# ########################################################
# Shell脚本中for循环的用法
# ########################################################


## 遍历数字
function func_for_number()
{
    echo '---------';
    for i in $(seq 0 10)
    do
        echo $i;
    done

    # do关键词若和for放在同一行，需加分号';'
    echo '---------';
    for i in $(seq 0 10); do
        echo $i;
    done

    echo '---------';
    for i in {0..10}; do
        echo $i;
    done

    echo '---------';
    for((i=0; i<=10; i++)); do
        echo $i;
    done
}

# 遍历字符串
function func_for_string()
{
    for s in "A" "B" "C";
    do
        echo $s
    done
}

# 调用函数
# func_for_number
func_for_string
func_for_file
