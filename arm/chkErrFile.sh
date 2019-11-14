#!/bin/bash

varnum=0
for var in $(ls .)
do
    if [ -e $var ]
    then 
        if [ "$var" = "out.err" ]
        then 
            let varnum=1
            cat out.err
        else
            break
        fi
    fi
done
if [ $varnum -eq 0 ]
then 
    echo "NO ERROR !"
fi
#!/bin/bash
var=1
while [ $var -le 10 ]
    do
        dirPath="dir$var"
        mkdir "$dirPath"
        var_file=1
        while [ $var_file -le 10 ]
            do
                cd "$dirPath"
                touch "$dirPath""file$var_file.txt"
                chmod 755 "$dirPath""file$var_file"
                let var_file= var_file+1
                cd ..
            done
        let var = var+1
    done
read PATH 
    cd "dir&PATH"
    cp *.txt *.bak
    ls > ../"readMyDel&PATH.txt"
    cd ..
    rm -rf "dir&PATH"
cd dir1
var_file=1
while [ $var_file -le 10 ]
    do
        cp dir1"file$var_file.txt" dir1"date+%F"
        let var_file= var_file+1
    done           
#!/bin/bash
cat /etc/passwd | cut -d ":" -f1 # 将passwd这个文件每一行里头的 ：用来作为分隔号，并列出第一个区域的块（姓名）
last | cut -d " " -f1 #以空格为分隔符，并列出第一个域用户名
last | cut -c1-20 # 将last结果中的每一行的1~20个字符取出
grep "aa.*" /etc/passwd | cut -d: -f1 > file #查看/etc/passwd中的所有包含字符串“aa”的用户，并将结果保存在文件中
ls /bin | grep "ls . *" > file # 查看/bin 下包含字符串“ls” 的文件名，并将结果保存在文件中
ls /bin /sbin > commandview
ls /bin | wc -l # 按行

#!/bin/bash
for var in $(ls .)
do
    if [ -d $var ]
    then 
        echo "$var"
    elif [ -e $var ]
    then 
        cat "$var"
    else 
    then 
        echo "ERROR !"
    fi
done