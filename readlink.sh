#!/bin/bash
# ########################################################
# Linux下打印文件的绝对路径 readlink
# ########################################################

#  readlink - print value of a symbolic link or canonical file name


# $ ls -ln /usr/bin/vimdiff 
# lrwxrwxrwx. 1 0 0 3 Sep 12  2013 /usr/bin/vimdiff -> vim

# 打印一个符号连接的值
# $ readlink /usr/bin/vimdiff 
# vim

# 递归跟随给出文件名的所有符号链接以标准化，除最后一个外所有组件必须存在。
# 打印出文件的绝对路径，除路径最后一部分(以/分隔)外必须存在
# $ readlink -f /usr/bin/vimdiff 
# /usr/bin/vim
# $ readlink -f /usr/bin/vimdiff_no_exist
# /usr/bin/vimdiff_no_exist

# 打印出文件的绝对路径，所有路径部分(以/分隔)可以存在，也可以不存在
# $ readlink -m /usr/bin/vimdiff 
# /usr/bin/vim
# $ readlink -m /usr/bin_no_exist/vimdiff_no_exist
# /usr/bin_no_exist/vimdiff_no_exist
# $ readlink -m /usr/bin/vimdiff_no_exist
# /usr/bin/vimdiff_no_exist

# 打印出文件的绝对路径，所有路径部分(以/分隔)必须存在
# $ readlink -e /usr/bin/vimdiff 
# /usr/bin/vim
# $ readlink -e /usr/bin/vimdiff_no_exist
# $ echo $?
# 1
# $ readlink -e /usr/bin_no_exist/vimdiff_no_exist
# $ echo $?
# 1
