let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <S-Tab> <Plug>SuperTabBackward
inoremap <C-Tab> 	
inoremap <silent> <Plug>NERDCommenterInsert  <BS>:call NERDComment('i', "insert")
vmap  :w !pbcopy
nnoremap <silent>  :CtrlP
vmap  :!pbcopy
nmap <silent> ,vR <Plug>EgMapReplaceCurrentWord_R
nmap <silent> ,vr <Plug>EgMapReplaceCurrentWord_r
nmap <silent> ,vA <Plug>EgMapGrepCurrentWord_A
nmap <silent> ,va <Plug>EgMapGrepCurrentWord_a
nmap <silent> ,vV <Plug>EgMapGrepCurrentWord_V
nmap <silent> ,vv <Plug>EgMapGrepCurrentWord_v
nmap ,hp <Plug>GitGutterPreviewHunk
nmap ,hr <Plug>GitGutterUndoHunk:echomsg ',hr is deprecated. Use ,hu'
nmap ,hu <Plug>GitGutterUndoHunk
nmap ,hs <Plug>GitGutterStageHunk
vmap <silent> ,vR <Plug>EgMapReplaceSelection_R
omap <silent> ,vR <Plug>EgMapReplaceCurrentWord_R
vmap <silent> ,vr <Plug>EgMapReplaceSelection_r
omap <silent> ,vr <Plug>EgMapReplaceCurrentWord_r
vmap <silent> ,vA <Plug>EgMapGrepSelection_A
omap <silent> ,vA <Plug>EgMapGrepCurrentWord_A
vmap <silent> ,va <Plug>EgMapGrepSelection_a
omap <silent> ,va <Plug>EgMapGrepCurrentWord_a
vmap <silent> ,vV <Plug>EgMapGrepSelection_V
omap <silent> ,vV <Plug>EgMapGrepCurrentWord_V
vmap <silent> ,vv <Plug>EgMapGrepSelection_v
omap <silent> ,vv <Plug>EgMapGrepCurrentWord_v
map <silent> ,vo <Plug>EgMapGrepOptions
nmap ,ca <Plug>NERDCommenterAltDelims
xmap ,cu <Plug>NERDCommenterUncomment
nmap ,cu <Plug>NERDCommenterUncomment
xmap ,cb <Plug>NERDCommenterAlignBoth
nmap ,cb <Plug>NERDCommenterAlignBoth
xmap ,cl <Plug>NERDCommenterAlignLeft
nmap ,cl <Plug>NERDCommenterAlignLeft
nmap ,cA <Plug>NERDCommenterAppend
xmap ,cy <Plug>NERDCommenterYank
nmap ,cy <Plug>NERDCommenterYank
xmap ,cs <Plug>NERDCommenterSexy
nmap ,cs <Plug>NERDCommenterSexy
xmap ,ci <Plug>NERDCommenterInvert
nmap ,ci <Plug>NERDCommenterInvert
nmap ,c$ <Plug>NERDCommenterToEOL
xmap ,cn <Plug>NERDCommenterNested
nmap ,cn <Plug>NERDCommenterNested
xmap ,cm <Plug>NERDCommenterMinimal
nmap ,cm <Plug>NERDCommenterMinimal
xmap ,c  <Plug>NERDCommenterToggle
nmap ,c  <Plug>NERDCommenterToggle
xmap ,cc <Plug>NERDCommenterComment
nmap ,cc <Plug>NERDCommenterComment
map ,g :e#
map ,f :bn
map ,b :bp
map ,n :NERDTreeToggle
nmap =j :%!python -m json.tool
xmap S <Plug>VSurround
nmap [c <Plug>GitGutterPrevHunk
vmap [% [%m'gv``
nmap ]c <Plug>GitGutterNextHunk
vmap ]% ]%m'gv``
xmap ac <Plug>GitGutterTextObjectOuterVisual
omap ac <Plug>GitGutterTextObjectOuterPending
vmap a% [%v]%
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
xmap ic <Plug>GitGutterTextObjectInnerVisual
omap ic <Plug>GitGutterTextObjectInnerPending
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
nnoremap <silent> <Plug>SurroundRepeat .
nnoremap <silent> <Plug>GitGutterPreviewHunk :GitGutterPreviewHunk
nnoremap <silent> <Plug>GitGutterUndoHunk :GitGutterUndoHunk
nnoremap <silent> <Plug>GitGutterStageHunk :GitGutterStageHunk
nnoremap <silent> <expr> <Plug>GitGutterPrevHunk &diff ? '[c' : ":\execute v:count1 . 'GitGutterPrevHunk'\"
nnoremap <silent> <expr> <Plug>GitGutterNextHunk &diff ? ']c' : ":\execute v:count1 . 'GitGutterNextHunk'\"
xnoremap <silent> <Plug>GitGutterTextObjectOuterVisual :call gitgutter#hunk#text_object(0)
xnoremap <silent> <Plug>GitGutterTextObjectInnerVisual :call gitgutter#hunk#text_object(1)
onoremap <silent> <Plug>GitGutterTextObjectOuterPending :call gitgutter#hunk#text_object(0)
onoremap <silent> <Plug>GitGutterTextObjectInnerPending :call gitgutter#hunk#text_object(1)
xnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("x", "Uncomment")
nnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("n", "Uncomment")
xnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("x", "AlignBoth")
nnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("n", "AlignBoth")
xnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("x", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("n", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAppend :call NERDComment("n", "Append")
xnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("x", "Yank")
nnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("n", "Yank")
xnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("x", "Sexy")
nnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("n", "Sexy")
xnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("x", "Invert")
nnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("n", "Invert")
nnoremap <silent> <Plug>NERDCommenterToEOL :call NERDComment("n", "ToEOL")
xnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("x", "Nested")
nnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("n", "Nested")
xnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("x", "Minimal")
nnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("n", "Minimal")
xnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("x", "Toggle")
nnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("n", "Toggle")
xnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("x", "Comment")
nnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("n", "Comment")
imap S <Plug>ISurround
imap s <Plug>Isurround
imap 	 <Plug>SuperTabForward
imap  <Plug>DiscretionaryEnd
imap  <Plug>Isurround
imap <silent> [6~ <PageDown>
imap <silent> [5~ <PageUp>
imap <silent> OF <End>
imap <silent> OH <Home>
imap <silent> OD <Left>
imap <silent> OC <Right>
imap <silent> OB <Down>
imap <silent> OA <Up>
inoremap jk 
inoremap kk $a
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autoread
set background=dark
set backspace=indent,eol,start
set errorformat=%\\S%\\+\ \ %#%[cefi]%[rxod]%[eir]%[a-z]%#%\\x1b[0m\ %\\+%\\S%\\+%$%\\&%\\x1b%\\S%\\+\ \ %#%m%\\>%\\x1b[0m\ \ %#%f,%\\s\ %#%[cefi]%[rxod]%[eir]%[a-z]%#\ %\\+%\\S%\\+%$%\\&%\\s\ %#%m%\\>\ \ %#%f,Overwrite%.%#%\\S%\\+\ \ %#%m%\\x1b[0m\ \ %#%f,%-GOverwrite%.%#\"h\"%.%#,%+GCurrent\ version:%.%#,%+G\ %#Status\ %#Migration\ ID%.%#,%+G\ %#Prefix\ %#Verb%.%#,%+G\ %#Code\ LOC:\ %.%#,%+GAbout\ your\ application's\ environment,%+Grun\ %\\S%#::Application.routes,%+Eruby:%.%#(LoadError),%+EUsage:%.%#,%+ECould\ not\ find\ generator%.%#,%+EType\ 'rails'\ for\ help.,%D(in\ %f),%\\s%#from\ %f:%l:%m,%\\s%#from\ %f:%l:,%\\s%##\ %f:%l:%m,%\\s%##\ %f:%l,%\\s%#[%f:%l:\ %#%m,%\\s%#%f:%l:\ %#%m,%\\s%#%f:%l:,%m\ [%f:%l]:,%+Erake\ aborted!,%+EDon't\ know\ how\ to\ build\ task\ %.%#,%+Einvalid\ option:%.%#,%+Irake\ %\\S%\\+%\\s%\\+#\ %.%#,chdir\ /Users/arpaio/Oohlala
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set guicursor=a:blinkon0
set helplang=en
set hidden
set history=1000
set hlsearch
set ignorecase
set imsearch=0
set incsearch
set laststatus=2
set listchars=tab:▸·,trail:·
set modelines=0
set mouse=a
set runtimepath=~/.vim,~/.vim/bundle/ack.vim,~/.vim/bundle/ag,~/.vim/bundle/bundle,~/.vim/bundle/csv,~/.vim/bundle/ctrlp.vim,~/.vim/bundle/haskell-vim,~/.vim/bundle/matchit,~/.vim/bundle/nerdcommenter,~/.vim/bundle/nerdtree,~/.vim/bundle/purescript-vim,~/.vim/bundle/railscasts-theme,~/.vim/bundle/supertab,~/.vim/bundle/syntastic,~/.vim/bundle/vim-airline,~/.vim/bundle/vim-airline-themes,~/.vim/bundle/vim-autoclose,~/.vim/bundle/vim-bufferline,~/.vim/bundle/vim-coffee-script,~/.vim/bundle/vim-easygrep,~/.vim/bundle/vim-elixir,~/.vim/bundle/vim-endwise,~/.vim/bundle/vim-fugitive,~/.vim/bundle/vim-gitgutter,~/.vim/bundle/vim-go,~/.vim/bundle/vim-json,~/.vim/bundle/vim-mustached-handlebars,~/.vim/bundle/vim-rails,~/.vim/bundle/vim-scala,~/.vim/bundle/vim-slim,~/.vim/bundle/vim-surround,~/.vim/bundle/vim-terraform,/usr/share/vim/vimfiles,/usr/share/vim/vim80,/usr/share/vim/vimfiles/after,~/.vim/bundle/haskell-vim/after,~/.vim/bundle/vim-coffee-script/after,~/.vim/bundle/vim-scala/after,~/.vim/bundle/vim-terraform/after,~/.vim/af
set shell=zsh
set shiftwidth=2
set showcmd
set noshowmode
set showtabline=2
set smartcase
set smartindent
set smarttab
set softtabstop=2
set statusline=%F%m%r%h%w\ \ [line\ %l/%L]\ col:\ %c
set noswapfile
set tabline=%!airline#extensions#tabline#get()
set tabstop=2
set updatetime=250
set viminfo='100,f1
set visualbell
set wildignore=*.o,*.obj,*~,*vim/backups*,*sass-cache*,*DS_Store*,vendor/rails/**,vendor/cache/**,*.gem,log/**,tmp/**,*.png,*.jpg,*.gif
set wildmenu
set wildmode=list:longest
set window=0
set nowritebackup
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Oohlala
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +17 app/views/layouts/application.html.erb
badd +23 app/views/posts/index.html.slim
badd +10 config/routes.rb
badd +17 app/views/cities/show.html.slim
badd +8 app/views/shared/_footer.html.slim
badd +24 app/views/shared/_navbar.html.slim
badd +1 app/views/locations/_form.html.slim
argglobal
silent! argdel *
$argadd app/views/locations/_form.html.slim
edit app/views/cities/show.html.slim
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
xnoremap <buffer> <silent> ,a| `>a|`<i|
xnoremap <buffer> <silent> ,a{ `>a}`<i{
xnoremap <buffer> <silent> ,a} `>a}`<i{
xnoremap <buffer> <silent> ,a#{ `>a}`<i#{
xnoremap <buffer> <silent> ,a) `>a)`<i(
xnoremap <buffer> <silent> ,a( `>a)`<i(
xnoremap <buffer> <silent> ,a' `>a'`<i'
xnoremap <buffer> <silent> ,a] `>a]`<i[
xnoremap <buffer> <silent> ,a[ `>a]`<i[
xnoremap <buffer> <silent> ,a" `>a"`<i"
nmap <buffer> gf <Plug>RailsFind
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/%s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%\\S%\\+\ \ %#%[cefi]%[rxod]%[eir]%[a-z]%#%\\x1b[0m\ %\\+%\\S%\\+%$%\\&%\\x1b%\\S%\\+\ \ %#%m%\\>%\\x1b[0m\ \ %#%f,%\\s\ %#%[cefi]%[rxod]%[eir]%[a-z]%#\ %\\+%\\S%\\+%$%\\&%\\s\ %#%m%\\>\ \ %#%f,Overwrite%.%#%\\S%\\+\ \ %#%m%\\x1b[0m\ \ %#%f,%-GOverwrite%.%#\"h\"%.%#,%+GCurrent\ version:%.%#,%+G\ %#Status\ %#Migration\ ID%.%#,%+G\ %#Prefix\ %#Verb%.%#,%+G\ %#Code\ LOC:\ %.%#,%+GAbout\ your\ application's\ environment,%+Grun\ %\\S%#::Application.routes,%+Eruby:%.%#(LoadError),%+EUsage:%.%#,%+ECould\ not\ find\ generator%.%#,%+EType\ 'rails'\ for\ help.,%D(in\ %f),%\\s%#from\ %f:%l:%m,%\\s%#from\ %f:%l:,%\\s%##\ %f:%l:%m,%\\s%##\ %f:%l,%\\s%#[%f:%l:\ %#%m,%\\s%#%f:%l:\ %#%m,%\\s%#%f:%l:,%m\ [%f:%l]:,%+Erake\ aborted!,%+EDon't\ know\ how\ to\ build\ task\ %.%#,%+Einvalid\ option:%.%#,%+Irake\ %\\S%\\+%\\s%\\+#\ %.%#,chdir\ /Users/arpaio/Oohlala
setlocal expandtab
if &filetype != 'slim'
setlocal filetype=slim
endif
setlocal fixendofline
setlocal foldcolumn=0
set nofoldenable
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
set foldnestmax=3
setlocal foldnestmax=3
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=GetSlimIndent()
setlocal indentkeys=o,O,*<Return>,},],0),!^F,=end,=else,=elsif,=rescue,=ensure,=when
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,-
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=bin/rake
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=.,~/Oohlala/lib,~/Oohlala/vendor,~/Oohlala/app/models/concerns,~/Oohlala/app/controllers/concerns,~/Oohlala/app/controllers,~/Oohlala/app/helpers,~/Oohlala/app/mailers,~/Oohlala/app/models,~/Oohlala/app/*,~/Oohlala/app/views,~/Oohlala/app/views/cities,~/Oohlala/app/views/application,~/Oohlala/public,~/Oohlala/test,~/Oohlala/test/unit,~/Oohlala/test/functional,~/Oohlala/test/integration,~/Oohlala/test/controllers,~/Oohlala/test/helpers,~/Oohlala/test/mailers,~/Oohlala/test/models,~/Oohlala/spec,~/Oohlala/spec/controllers,~/Oohlala/spec/helpers,~/Oohlala/spec/mailers,~/Oohlala/spec/models,~/Oohlala/spec/views,~/Oohlala/spec/lib,~/Oohlala/spec/features,~/Oohlala/spec/requests,~/Oohlala/spec/integration,~/Oohlala/vendor/plugins/*/lib,~/Oohlala/vendor/plugins/*/test,~/Oohlala/vendor/rails/*/lib,~/Oohlala/vendor/rails/*/test,~/Oohlala,/usr/include
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.rb
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'slim'
setlocal syntax=slim
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=~/Oohlala/tags,~/Oohlala/tmp/tags,./tags,tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 5 - ((4 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 0
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
