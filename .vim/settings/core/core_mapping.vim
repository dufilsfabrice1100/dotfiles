"2. Upper/Lower word
nmap <leader>u mQviwU`Q
nmap <leader>l mQviwu`Q

"3. Upper/Lower the firs char of word
nmap <leader>U mQgewvU`Q
nmap <leader>L mQgewvu`Q

"Make alt-key work sanely
"if g:is_vim && !has('nvim')
"    let c='a'
"    while c <= 'z'
"    exec "set <A-".c.">=\e".c
"    "Trick to make Alt key work properly  
"    exec "imap \e".c." <A-".c.">"
"    let c = nr2char(1+char2nr(c))
"    endw
"endif


nnoremap<nowait> j gj
nnoremap<nowait> k gk
xnoremap<nowait> j gj
xnoremap<nowait> k gk
nnoremap J 5j
nnoremap K 5k
xmap J 5j
xmap K 5k


"if you visually select something and hit paste
" that thing gets yanked into your buffer. This
" generally is annoying when you're copying one item
" and repeatedly pasting it. This changes the paste
" command in visual mode so that it doesn't overwrite
" whatever is in your paste buffer.
vnoremap p "_dP

"Make 0 go to the first character rather than the beginning
nnoremap 0 ^ 
nnoremap ^ 0

"edit config file 
nnoremap <leader>ev :split $MYVIMRC<CR> 
nnoremap <leader>sv :source $MYVIMRC<CR> 

" Easier linewise reselection of what you just pasted.
nnoremap <leader>v V`]

" Typos
command! -bang E e<bang>
command! -bang Q q<bang>
command! -bang W w<bang>
command! -bang QA qa<bang>
command! -bang Qa qa<bang>
command! -bang Wa wa<bang>
command! -bang WA wa<bang>
command! -bang Wq wq<bang>
command! -bang WQ wq<bang>

" Use sane regexes.
nnoremap / /\v
vnoremap / /\v

"Moving line up and down 
nnoremap <silent><A-j> :m .+1<CR>==
nnoremap <silent><A-k> :m .-2<CR>==
inoremap <silent><A-j> <Esc>:m .+1<CR>==gi
inoremap <silent><A-k> <Esc>:m .-2<CR>==gi
vnoremap <silent><A-j> :m '>+1<CR>gv=gv
vnoremap <silent><A-k> :m '<-2<CR>gv=gv

"folding 
nnoremap <Space> za 
vnoremap <Space> za


nnoremap <localleader>; A;<Esc>

" Edit a new file starting in the same dir as the current file
nnoremap <leader>ce :sp <C-R>=expand("%:p:h") . "/" <cr>

"Quit windows quickly
nnoremap <leader>Q <ESC>:q<CR>
nnoremap <leader>wq <ESC>:wq<CR>

"Easy Completions
inoremap <C-k> <C-x><C-k>


"Open file from current dir
nnoremap <C-f> :FZF <c-r>=fnameescape(expand("%:p:h"))<cr><cr>

command CDC cd %:p:h

" Spacebar toggles a fold, zi toggles all folding, zM closes all folds
noremap <silent> <space> :exe 'silent! normal! za'.(foldlevel('.')?'':'l')<cr>

command! Dos2unix exec ':%s/\r//g'
"inoremap <C-B> `
"cnoremap <C-B> `
"inoremap <C-T> ~
"cnoremap <C-T> ~
"" quickfix window
"nnoremap <silent> <leader>xx :cwindow<CR>
"nnoremap <silent> <leader>xp :clist<CR>
"nnoremap <silent> <leader>xc :cclose<CR>
"nnoremap <silent> <leader>xz :call setqflist([])<CR>
nnoremap <tab> }
xnoremap <tab> }
nnoremap \ {
xnoremap \ {
"" keep search matches in the middle of the window
"nnoremap n nzvzz
"nnoremap N Nzvzz
"" don't lose selection after indenting
vnoremap < <gv
vnoremap > >gv
" useful cheats
"inoremap <C-A> <ESC>I
"inoremap <C-Q> <ESC>A
"inoremap <C-E> <ESC>lwi
"inoremap <C-S> <ESC>lbi
"inoremap <C-D> <ESC>o
"inoremap <C-F> <ESC>O
