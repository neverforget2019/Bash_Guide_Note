#!/bin/bash
# ########################################################
# 验证
#   - 命令行参数的使用
#   - 函数传参的使用
#   - $@ 和 $*的区别
# 总结
#   - 参数传递和C语言类似 从0开始
#   - $# 有多个个参数
#   - $*
# ########################################################



# i=0
# for arg in "$@"
# do
#     echo "$i: $arg";
#     ((i++));
# done

# echo "---------------";

# i=0
# for arg in $*
# do
#     echo "$i: $arg";
#     ((i++));
# done

############################################################
# 命令行参数
## 执行 bash args.sh arg1 arg2
## 结论 和C语言的main函数的参数位置一致
echo "####################";
echo "has $# arguments";
echo "argv[0]: $0";
echo "argv[1]: $1";
echo "argv[2]: $2";
echo "####################";
############################################################

############################################################
# 函数传参
function func_echo()
{
    echo "argv[0]: $0";
    echo "argv[1]: $1";
    echo "argv[2]: $2";
    echo "argv[3]: $3";

    # 所有参数
    echo "\$@: \"$@\"";
    echo "\$*: \"$*\"";

    ## $@ 和 $* 对比
    echo "------------ Method1: for arg in \"\$*\" ";
    i=1
    for arg in "$*"; do
        echo "--->\"\$*\" $i: $arg";
        ((i++));
    done

    echo "------------ Method2: for arg in \$* ";
    i=1
    for arg in $*; do
        echo "--->\$* $i: $arg";
        ((i++));
    done

    echo "------------ Method3: for arg in \"\$@\" ";
    i=1
    for arg in "$@"; do
        echo "--->\"\$@\" $i: $arg";
        ((i++));
    done

    echo "------------ Method4: for arg in \$@ ";
    i=1
    for arg in $@; do
        echo "--->\$@ $i: $arg";
        ((i++));
    done
}

func_echo 1 1.001 "string" "hello world";
############################################################

############################################################
# $@ 和 $* 对比

function func_vs()
{
    echo "------------ Method1: for arg in \"\$*\" ";
    i=1
    for arg in "$*"; do
        echo "--->\"\$*\" $i: $arg";
        ((i++));
    done

    echo "------------ Method2: for arg in \$* ";
    i=1
    for arg in $*; do
        echo "--->\$* $i: $arg";
        ((i++));
    done

    echo "------------ Method3: for arg in \"\$@\" ";
    i=1
    for arg in "$@"; do
        echo "--->\"\$@\" $i: $arg";
        ((i++));
    done

    echo "------------ Method4: for arg in \$@ ";
    i=1
    for arg in $@; do
        echo "--->\$@ $i: $arg";
        ((i++));
    done
}

echo "####################";
func_vs 1 1.001 "string" "hello world";
echo "####################";
############################################################
