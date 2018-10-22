#!/bin/bash
#
#Author:wangjinbo
#Date:2018-10-23
#Description:
#
##demo.sh xxx 可在当前目录下生成目录 xxx，demo.sh yyy 可生成目录 yyy
##如果要生成的目录已经存在，则直接退出
##生成的目录结构如下：
## ├── css
## │   └── style.css
## ├── index.html
## └── js
##     └── main.js
##index.html 的内容为
## <!DOCTYPE>
## <title>Hello</title>
## <h1>Hi</h1>
##css/style.css 的内容为
## h1{color: red;}
##js/main.js 的内容为
## var string = "Hello World"
## alert(string)
##


echo "创建目录 $1";

if [ -d "./$1" ]; then 
	echo "目录$1"已存在
	exit 0
else
	mkdir -p $1/css
	mkdir -p $1/js
	cd $1

	echo '<!DOCTYPE>
 <title>Hello</title>
 <h1>Hi</h1>' > index.html

	echo 'h1{color: red;}' > css/style.css

	echo ' var string = "Hello World"
 alert(string)' > js/main.js
fi

echo "目录创建完成，打印如下"

ls -R ../$1
