if exists('g:fern_mapping_call_function')
  finish
endif
let g:fern_mapping_call_function = v:true

call add(g:fern#internal#mapping#mappings, 'call_function')

