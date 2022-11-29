#!/bin/bash

echo "请输入要从git中删除的文件路径："
read to_del_file
git filter-branch --index-filter "git rm -rf --cached --ignore-unmatch $to_del_file" HEAD
echo "文件$to_del_file 已删除."
exit 0
