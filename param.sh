#!/bin/bash
##########################################################
# param.sh
# 参数替换用法
##########################################################

#!/bin/bash 
# param.sh

#参数替换
{
# ${param-default} 如果 param 未声明,则使用默认值,否则使用null
#+ ${param:-default} 如果 param 未设置,则使用默认值,否则使用null
    echo "${num-123}, ${num:-123}";
    num=;
    echo "${num-123}, ${num:-123}";
    num=456;
    echo "${num-123}, ${num:-123}";
    echo "${num}"
    echo;
}

{
# ${param=default} 如果 param 未声明,则 param 的值设置为 default,并返回.
#+ ${param:=default} 如果 param 未设置,则 param 的值设置为 defalut,并返回.
    echo "${str="hello kitty"}, ${str:="hello kitty"}";
    str=;
    echo "${str="hello kitty"}, ${str:="hello kitty"}";
    str="How do you do?";
    echo "${str="hello kitty"}, ${sty:="hello kitty"}";
    echo "${str}"
    echo;
}

{
# ${param+val} 如果 param 已声明,则使用 val,否则使用null.
#+ ${param:+val} 如果 param 已设置,则使用 val, 否则使用null.
    unset num ;
    echo "${num+123}, ${num:+123}";
    num=;
    echo "${num+123}, ${num:+123}";
    num=456;
    echo "${num+123}, ${num:+123}";
    echo "${num}";
    echo;
}

{
# ${param?errmsg} 如果 param 已被声明,那么使用它的值,否则打印 errmsg,并 exit
#+ ${param:?errmsg} 如果 param 已被设置,那么使用它的值,否则打印 errmsg,并 exit

    str="Hello World.";
    echo "${str}";
    echo "${str?"str undefault"}, ${str:?"str unset"}";
    srt=;
    echo "${str?"str undefault"}, ${str:?"str unset"}";
    unset str
    echo "${str?"str undefault"}, ${str:?"str unset"}";
    echo;
}

#-, :-
#=, :=
#+, :+
#?, :?

