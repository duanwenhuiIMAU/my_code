#!/bin/bash
# this is the first Bash shell program
# scriptname: greeting.sh
echo
echo -e "hollo $LOGNAME, \c" # 不换行
echo    "it's nice talking to you."
echo -n "your present working directory is:" 
pwd # show the name of present directory
echo
echo -e "this time is `data +%T`!.\nBye" # 处理特殊字符
echo
# 变量
## 1 用户自定义变量
### 定义变量
variable_name=value
### 取变量
echo $variable_name
### 清除变量
unset variable_name
## 2 环境变量- window 下 java 的路径
### 可以使用 env 查看
## 3 位置变量
### $0$1$2$3$4$5$6$7$8$9 共这 10 个
### $0 用于
## tarena@ubuntu:~/test$ cat aa.sh
#!/bin/bash
dirname $0 ##取得是路径
basename $0 ##取得是脚本名
tarena@ubuntu:~/test$ sh /home/tarena/test/aa.sh
/home/tarena/test
aa.sh
### 用于脚本与命令行交互时取变量
# !/bin/bash
#This script test shift 
echo $0
echo $1,$2,$3,$4,$5,$6,$7,$8,$9
shift
echo $1,$2,$3,$4,$5,$6,$7,$8,$9
shift
echo $1,$2,$3,$4,$5,$6,$7,$8,$9
shift 2
echo $1,$2,$4,$5,$6,$7,$8,$9
#scri3,$4,$5,$6,$7,$8,$9
shift 2
echo $1,$2,$3,$pt end
- []$ sh shift_script 1 2 3 4 5 6 7 8 9 0
## 4 特殊变量
$# # 表示传递给脚本的实际参数个数。
$$ # 当前shell脚本的进程号
$* #位置参数的值，各个参数之间用环境变量IFS中定义的字符分隔开。
$@ #也表示位置参数的值，它不使用IFS环境变量，所以当IFS为空时，参数值不会结合在一起。
# tarena@ubuntu:~/test$ IFS=','
# tarena@ubuntu:~/test$ set aa bb cc
# tarena@ubuntu:~/test$ echo "$@"
# aa bb cc
# tarena@ubuntu:~/test$ echo "$*"
# aa,bb,cc
$! #上一个后台命令的进程号。
$? #命令执行的返回值，0表示没有错误，其他表示有错误
   # 1~2 权限不足
   # 126 命令找到了无法执行
   # 127 命令找不到
   # 大于 128 命令执行中退出
## 运算
## if
#!/bin/bash
if cp myfile myfile.bak; then 
    echo "good copy" ## 如果 cp 成功执行
else # 取脚本名
    echo "`basename $0`: error could not copy the file" 
fi # 以倒写的 if 作为结束
#!/bin/sh
    # 这个路径是否不为 根目录
if [ `pwd` != "/" ]; then
    echo "You need to be in the root directory, not in  
        `pwd` to run this scrip">&2
    exit 1 # 退出状态意味着错误信息
fi
