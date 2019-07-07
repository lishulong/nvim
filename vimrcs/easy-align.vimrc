set cino+=(0 " align multiple line arguments
xmap al <Plug>(EasyAlign)
nmap al <Plug>(EasyAlign)
let g:easy_align_delimiters = {
\ '\': {
\     'pattern':         '\\$'
\  },
\  '/': {
\     'pattern':         '//\+\|/\*\|\*/',
\     'delimiter_align': 'l',
\     'ignore_groups':   ['!Comment']
\  },
\ }
