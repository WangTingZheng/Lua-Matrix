# Lua-Matrix 
[English](./README-EN.md) 本项目是我练习lua的项目，bug多，不完整，只想要使用的同学推荐这个[项目](https://github.com/davidm/lua-matrix)
## 用法
- 安装 [lua](https://github.com/lua/lua/releases)
- 安装vscode或其它lua编辑器
- 如果你使用的是vscode，请下载这个叫[Code Runner](https://marketplace.visualstudio.com/items?itemName=formulahendry.code-runner)的插件来运行lua程序
- 找到你lua的模块地址
新建一个lua文档来查看运行结果:

```lua
print(package.path)
```
以下是我的路径：
```
;.\?.lua;C:\Program Files (x86)\Lua\5.1\lua\?.lua;C:\Program Files (x86)\Lua\5.1\lua\?\init.lua;C:\Program Files (x86)\Lua\5.1\?.lua;C:\Program Files (x86)\Lua\5.1\?\init.lua;C:\Program Files (x86)\Lua\5.1\lua\?.luac;.\?.lua;C:\Program Files (x86)\Lua\5.1\lua\?.lua;C:\Program Files (x86)\Lua\5.1\lua\?\init.lua;C:\Program Files (x86)\Lua\5.1\?.lua;C:\Program Files (x86)\Lua\5.1\?\init.lua;;D:\Lua\5.1\lua\?.luac
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
## 函数列表
- `matrix.init:` 新建一个矩阵
- `matrix.getLength:` 取得矩阵的长度信息
- `matrix.print:` 输出矩阵
- `matrix.add:` 把两个矩阵相加
- `matrix.subtract:` 把两个矩阵相减
- `matrix.multiply:` 把两个矩阵相乘
- `matrix.transposition:` 转置一个矩阵
- `matrix.inverse:` 取反一个矩阵
- `matrix.scalarMultiply:` 把一个数和一个矩阵进行数乘