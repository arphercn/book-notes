#!/bin/bash
# Program:
# Program creates three files, which named by user's input # and date command.
# History:
# 2005/08/23 VBird First release 
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin 
export PATH
# 1. 让使用者输入文件名,并取得 fileuser 这个发量;
echo -e "I will use 'touch' command to create 3 files." # 纯粹显示信息 
read -p "Please input your filename: " fileuser # 提示使用者输入
# 2. 为了避免使用者随意按 Enter ,利用变量功能分析档名是否有设定?
filename=${fileuser:-"filename"} # 开始判断有否配置文件名
# 3. 开始利用 date 指令来取得所需要的档名了;
date1=$(date --date='2 days ago' +%Y%m%d) # 前两天的日期 
date2=$(date --date='1 days ago' +%Y%m%d) # 前一天的日期
date3=$(date +%Y%m%d) 
file1=${filename}${date1} 
file2=${filename}${date2} 
file3=${filename}${date3}
# 4. 将档名建立吧! 
touch "$file1" 
touch "$file2" 
touch "$file3"
