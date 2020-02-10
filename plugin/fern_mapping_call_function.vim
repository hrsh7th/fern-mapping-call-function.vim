if exists('g:fern_mapping_call_function')
  finish
endif
let g:fern_mapping_call_function = v:true

call add(g:fern#mapping#mappings, 'call_function')

