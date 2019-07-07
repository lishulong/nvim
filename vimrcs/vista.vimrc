let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

let g:vista_default_executive = 'coc'         " use coc as source
let g:vista_sidebar_position = 'vertical topleft'

let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }


" let g:vista_echo_cursor_strategy = 'floating_win'
let g:vista_stay_on_open = 0
noremap <C-j> :Vista!!<CR>
