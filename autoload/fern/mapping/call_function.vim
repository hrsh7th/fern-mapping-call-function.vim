let s:fns = {}

"
" fern#mapping#call_function#init
"
function! fern#mapping#call_function#init(disable_default_mappings) abort
  echomsg string(["'aiueo'", 'aiueo'])
  for l:name in keys(s:fns)
    execute printf("nmap <silent><buffer> <Plug>(fern-action-call-function:%s) :<C-u>call <SID>call('%s')<CR>", l:name, l:name)
  endfor
endfunction

"
" fern#mapping#call_function#add
"
function! fern#mapping#call_function#add(name, func) abort
  let s:fns[a:name] = a:func
endfunction

"
" call
"
function! s:call(name) abort
  call s:fns[a:name](fern#helper#new())
endfunction

