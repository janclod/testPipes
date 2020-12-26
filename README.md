### testPipes

This package simply aims to reproduce an error encountered while working
on a bigger [project](https://github.com/informalr/informalr/)
when using pipes (%>%).

In short, 
GHA [fails](https://github.com/informalr/informalr/actions/runs/442815899)
to build on macOS and Ubuntu when pipes are used in more than one single file.
