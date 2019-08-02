# Lua-Matrix [English](./README-EN.md)
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
    Matrix=require("matrix")
```
使用 `Matrix.functionName` 的格式去调用模块中的函数
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