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

### examples of [bad code](https://github.com/janclod/testPipes/tree/bad_pipe) according to lintr
Example of code that breaks on GHA:
```
data.frame(col1 = c1, col2 = c2) %>% stats::na.omit()
```
Everything on one line: lintr does not like this!

### examples of [good code](https://github.com/janclod/testPipes/tree/good_pipe) according to lintr 
Example of code that builds without erros on GHA:
```
data.frame(col1 = c1,
          col2 = c2) %>% stats::na.omit()
```
Each pipe is on a new line: lintr likes this! <3

### linter analysis
After some digging, it seems that the ```object_usage_linter``` is responsible for
breaking the code. This linter harnesses the [codetools package](https://cran.r-project.org/package=codetools).
This linter calls ```codetools::checkUsage``` on closures.
In this specific case, this will look something like this:
```
codetools::checkUsage(function1 <- function(x) {
  c1 <- as.numeric(x$col1)
  c2 <- as.numeric(x$col2)
  data.frame(col1 = c1, col2 = c2) %>% stats::na.omit()
})
```
