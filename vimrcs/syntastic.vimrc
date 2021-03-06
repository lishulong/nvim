set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0


let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_go_checkers = ['golangci-lint']

let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "active_filetypes": ["go", "c", "lua"],
    \ "passive_filetypes": ["python"] }
