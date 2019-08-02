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
Matrix=require("matrix")
```
use `Matrix.functionName` to call the function
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