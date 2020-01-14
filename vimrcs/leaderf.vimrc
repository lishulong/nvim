let g:Lf_PreviewInPopup = 1
" use '<C-P>' to search files
let g:Lf_ShortcutF = '<C-P>'
let g:Lf_StlSeparator = { 'left': '►', 'right': '◄', 'font': '' }

let g:Lf_StlColorscheme = 'powerline'
let g:Lf_PreviewResult = { 'BufTag': 0, 'Function': 0 }
let g:Lf_DefaultMode = 'NameOnly'
let g:Lf_AlmostAlign = 0

nnoremap ,t :LeaderfBufTag<CR>
nnoremap ,f :LeaderfFile<CR>
" search word under cursor, the pattern is treated as regex, and enter normal mode directly
noremap <C-A> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR><CR>
" search word under cursor literally only in current buffer
noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg -F --current-buffer -e %s ", expand("<cword>"))<CR><CR>
" search visually selected text literally, don't quit LeaderF after accepting an entry
xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F --stayOpen -e %s ", leaderf#Rg#visual())<CR><CR>
