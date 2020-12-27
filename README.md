### testPipes

This package simply aims to reproduce an error encountered while working
on a bigger [project](https://github.com/informalr/informalr/)
when using pipes (%>%).

### error
In short, 
GHA [fails](https://github.com/informalr/informalr/actions/runs/442815899)
to build on macOS and Ubuntu ~~when pipes are used in more than one single file~~
when pipes do not start on a new line.


On GHA, `lintr::expect_lint_free()` throws the following error:  
```Warning: no visible global function definition for ‘%>%’```

See [this](https://github.com/jimhester/lintr/blob/master/R/pipe_continuation_linter.R)
for more info about the lint related to pipes.

### examples of [bad code]() according to lintr
Example of code that breaks on GHA:
```
data.frame(col1 = c1, col2 = c2) %>% stats::na.omit()
```
Everything on one line: lintr does not like this!

### examples of [good code]() according to lintr 
Example of code that builds without erros on GHA:
```
data.frame(col1 = c1,
          col2 = c2) %>% stats::na.omit()
```
Each pipe is on a new line: lintr likes this! <3
