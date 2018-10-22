let dir = process.argv[2]

let fs = require('fs')

if(fs.existsSync(dir)){
  console.log(`文件夹{dir}已存在`)
  return;
}

fs.mkdirSync(dir)
fs.mkdirSync(dir+'/css')
fs.mkdirSync(dir+'/js')
fs.writeFileSync(dir+"/index.html",`<!DOCTYPE>
 <title>Hello</title>
 <h1>Hi</h1>`)
fs.writeFileSync(dir+"/js/main.js",` var string = "Hello World"
 alert(string)`)
fs.writeFileSync(dir+"/css/style.css",` h1{color: red;}`)

console.log("文件夹创建完成")


