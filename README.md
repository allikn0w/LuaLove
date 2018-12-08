Use . instead of /
```lua
require("path.to.example")
```
## Returning a value
Like functions, files can return a value. If we put return 10 at the end of example.lua, and inside main.lua we do print(require("example")), you will see that it prints 10.
