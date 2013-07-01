setlocal efm=%-P%f,
            \%A%>%\\s%\\?#%*\\d\ %m,%Z%.%#Line\ %l\\,\ Pos\ %c,
            \%-G%f\ is\ OK.,%-Q

au BufRead quickfix setl modifiable
            \| silent exe "%!perl -ple '$_ = sprintf q{\\%s|\\%3s \\%s \\%2s|\\%s}, split qr{[| ]}, $_, 5'"
            \| setl nomodifiable

setl number
setl ru
setlocal expandtab
setlocal shiftwidth=3
setlocal softtabstop=3

au BufWritePre <buffer> call StripBadWhitespace()

" cleanup bad whitespace
" bad whitespace is defined as whitespace that occurs at the end of a line, and on blank lines
function! StripBadWhitespace()
" Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
" Do the business:
" first is trailing whitespace, second is blank lines
   %s/\s\+$//e
" Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

