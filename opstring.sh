#!/bin/bash 
##########################################################
# opstring.sh
# 验证字符串操作
##########################################################

str=abcABC123ABCabc

# 长度
echo "${str} len: ${#str}"
echo "${str} len: `expr length ${str}`"
echo "${str} len: `expr "$str" : '.*'`"
echo

#匹配字符串开头的子字符串长度
echo "match: `expr match "${str}" 'abc[A-C]*..3'`"
echo "match: `expr "${str}" : 'abc[A-C]*..3'`"
echo

#索引
echo "index: `expr index "${str}" '123'`"
echo

#提取子串
echo "get substring: ${str:3}"
echo "get substring: ${str:3:11}"
echo "get substring: `expr match ${str} '.*\(ABC[1-3]..\).*'`"
echo "get substring: `expr "${str}" : '.*\(ABC[1-3]..\).*'`"
echo

#从头删除子串
echo "delete head substring: ${str#a*A}"
echo "delete head substring: ${str##a*A}"
echo
#从尾删除子串
echo "delete tail substring: ${str%A*c}"
echo "delete tail substring: ${str%%A*c}"
echo

#子串替换
echo "replace substring: ${str/ABC/789}"
echo "replace substring: ${str//ABC/789}"
echo "replace substring: ${str/#abc/789}"
echo "replace substring: ${str/%abc/789}"

