

"" escape 
inoremap jk <esc>

"map <c-g> <c-c>
"map! <c-g> <c-c> 

inoremap <c-g> <c-c>
vnoremap <c-g> <c-c> 
cnoremap <c-g> <c-c>


"" YouCompleteMe
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
" let g:ycm_global_ycm_extra_conf = '/Users/hd/.vim_runtime/sources_non_forked/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
" let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
" let g:ycm_python_binary_path = '/Users/hd/anaconda/bin/python'

" nnoremap <leader>, :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>, :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>. :YcmCompleter GoToReferences<CR>

"" tagbar
" nnoremap <silent> <f9> :TagbarToggle<cr>
nnoremap <silent> <c-p> :TagbarToggle<cr>

"" vim-airline
let g:airline#extensions#tabline#enabled = 1
if has("gui_running")
    let g:airline_powerline_fonts = 1
    " temporary solution to show tabline in gui
    au VimEnter * AirlineToggle
    au VimEnter * AirlineToggle
endif
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


" buffer next and previous
nnoremap K :bnext<cr>
nnoremap J :bprevious<cr>

" nerd tree toggle
nnoremap <c-n> :NERDTreeToggle<cr>


" emacs like beginning and end of line
imap <C-A> <C-O>0
imap <C-E> <C-O>$

" number
set number

"UltiSnip
" let g:UltiSnipsExpandTrigger="<c-j>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"


" vim-pencil
augroup pencil
    autocmd!
    autocmd FileType text         call pencil#init()
augroup END
    " autocmd FileType markdown,mkd call pencil#init()

" for Mac terminal (default terminal or iTerm) to enable scroll
:set mouse=a

" disable, auto-complete is via youcompleteme
let g:pymode_rope_completion = 0
let g:pymode_folding = 0

nmap <space> ]m
nmap <s-space> [m

" nnoremap <Tab>   <c-W>w
" nnoremap <S-Tab> <c-W>W

"" swap jump back and forward
nnoremap <c-i> <c-o>
nnoremap <c-o> <c-i>

" concise layout 
" set fillchars+=vert:│
hi VertSplit ctermbg=NONE guibg=NONE
set foldcolumn=0

nnoremap * *``

" vim-notes
let g:notes_directories = ['/Users/hd/Nutstore/note','/Users/hd/Nutstore/work/notes']
let g:notes_suffix = '.not'
let g:notes_unicode_enabled = 0


" insert date
" iab ddate <c-r>=strftime("%y-%m-%d")<cr>
nmap <leader>d i<C-R>=strftime("%Y-%m-%d")<CR><Esc>
" imap <c-d> <C-R>=strftime("%Y-%m-%d")<CR>
nmap <leader>dd i<C-R>=strftime("%Y-%m-%d %a %H:%M")<CR><Esc>
" imap <c-d>d <C-R>=strftime("%Y-%m-%d %a %H:%M")<CR>

set fencs=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

onoremap ae :normal!0f=lv$h<cr>

let g:gruvbox_contrast_dark = 'soft'
set background=dark
colorscheme gruvbox
" colorscheme molokai
" colorscheme solarized


" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" CTRL-P
let g:ctrlp_working_path_mode = 0
let g:ctrlp_map = '<c-f>'
map <leader>j :CtrlP<cr>
map <c-b> :CtrlPBuffer<cr>
map <leader>f :CtrlPMRUFiles<cr>
let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'






" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" CTRL-P
let g:ctrlp_working_path_mode = 0
let g:ctrlp_map = '<c-f>'
map <leader>j :CtrlP<cr>
map <c-b> :CtrlPBuffer<cr>
map <leader>f :CtrlPMRUFiles<cr>
let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'


" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()


" set statusline+=%{coc#status()}
"
set cursorline

" snippets
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
