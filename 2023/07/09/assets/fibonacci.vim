#!/usr/bin/env -S nvim --cmd ":source fibonacci.vim"
function! Fibonacci(n)
    if a:n <= 2
        return 1
    else
        return Fibonacci(a:n - 2) + Fibonacci(a:n - 1)
    endif
endfunction

echom Fibonacci(39)
quit!
