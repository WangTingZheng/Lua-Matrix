# Lua-Matrix
This project is for practicing, if you only want to use, i highly recommand this [project](https://github.com/davidm/lua-matrix)
## usage
- install [lua](https://github.com/lua/lua/releases)
- install vscode or other lua editor
- if you use vscode as your editor, you can download this Plug-in called [Code Runner](https://marketplace.visualstudio.com/items?itemName=formulahendry.code-runner) to run lua code
- found your lua module path
new a lua file to see the result:

```lua
print(package.path)
```
this is my path:
```
;.\?.lua;C:\Program Files (x86)\Lua\5.1\lua\?.lua;C:\Program Files (x86)\Lua\5.1\lua\?\init.lua;C:\Program Files (x86)\Lua\5.1\?.lua;C:\Program Files (x86)\Lua\5.1\?\init.lua;C:\Program Files (x86)\Lua\5.1\lua\?.luac;.\?.lua;C:\Program Files (x86)\Lua\5.1\lua\?.lua;C:\Program Files (x86)\Lua\5.1\lua\?\init.lua;C:\Program Files (x86)\Lua\5.1\?.lua;C:\Program Files (x86)\Lua\5.1\?\init.lua;;D:\Lua\5.1\lua\?.luac
```
found one of the path as your lua module path
- move the `matrix.lua` to your path
- new a lua file as your lua project file:
  
```lua
mym=require("matrix")
t=mym.init(3,2,1)
mym.print(t)
```
use `modulename.functionName` to call the function
- modulename：the name of module，your can get it though `require("matrix")` return value
- functionname：the name of function which you need to call
the result:
```
11
11
11
```
**Play attention: don't use `Matrix` or `matrix` as your module name.**
## function list
- `matrix.init:` to create a new matrix
- `matrix.getLength:` to get the length of a matrix
- `matrix.print:` output a matrix
- `matrix.add:` add two matrices together
- `matrix.subtract:` abstract two matrices together
- `matrix.multiply:` multiply two matrices together
- `matrix.transposition:` transpose a matrix
- `matrix.inverse:` inverse a matrix
- `matrix.scalarMultiply:` scalar multiply a number with a matrix