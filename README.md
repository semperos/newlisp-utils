## Utils ##

### How to Compile ###

To make an OS executable, you need...

 1. The `newlisp` executable
 2. The `link.lsp` file

...in a single directory, which we'll call `build`. Then do the following:

```
cd build
cp /path/to/name-of-program.lsp .
newlisp link.lsp
```

Then at prompt:

```
(program "name-of-program.lsp")
```

This will produce an executable called "name-of-program" inside the build directory. Do `chmod +x name-of-program` and put it on your PATH to have it available at the command-line.
