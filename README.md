# Lua-Matrix 
[English](./README-EN.md)
## 用法
- 安装 [lua](https://github.com/lua/lua/releases)
- 安装vscode或其它lua编辑器
- 找到你lua的模块地址
新建一个lua文档来查看运行结果:

```lua
print(package.path)
```
找一个路径作为你lua模块的路径
- 把 `matrix.lua` 移到你的路径对应的文件夹
- 新建一个新的lua文档来作为你的项目:
  
```lua
mym=require("matrix")
t=mym.init(3,2,1)
mym.print(t)
```
使用 `modulename.functionName` 的格式去调用模块中的函数
- modulename：模块名，通过`require("matrix")`来返回
- functionname：库中的函数名，你要调用的函数
运行结果为：
```
11
11
11
```
**注意：千万不要使用matrix或者Matrix来作为模块名称，会报错**
## function list
- init: 新建一个矩阵
- getLength: 取得矩阵的长度信息
- Print: 输出矩阵
- add: 把两个矩阵相加
- subtract: 把两个矩阵相减
- multiply: 把两个矩阵相乘
- transposition: 转置一个矩阵
- inverse: 取反一个矩阵
- scalarMultiply: 把一个数和一个矩阵进行数乘