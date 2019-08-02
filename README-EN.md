# Lua-Matrix
## usage
- install [lua](https://github.com/lua/lua/releases)
- install vscode or other lua editor
- found your lua module path
new a lua file to see the result:

```lua
print(package.path)
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
- init: to create a new matrix
- getLength: to get the length of a matrix
- Print: output a matrix
- add: add two matrices together
- subtract: abstract two matrices together
- multiply: multiply two matrices together
- transposition: transpose a matrix
- inverse: inverse a matrix
- scalarMultiply: scalar multiply a number with a matrix