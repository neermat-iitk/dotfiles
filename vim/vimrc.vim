" Vundle packages
	so ~/dotfiles/vim/packages.vim

" Airline
	"let g:airline_powerline_fonts = 1
	" tabline
		let g:airline#extensions#tabline#enabled = 1
		let g:airline#extensions#tabline#left_sep = ' '
		let g:airline#extensions#tabline#left_alt_sep = '|'
		let g:airline#extensions#tabline#formatter = 'default'
	" theme
	 	let g:airline_theme='sol'
	" whitespace warning
		let g:airline#extensions#whitespace#enabled = 0


" MiniBufExpl
	let g:miniBufExplMapWindowNavVim = 1 
	let g:miniBufExplMapWindowNavArrows = 1 
	let g:miniBufExplMapCTabSwitchBufs = 1 
	let g:miniBufExplModSelTarget = 1

" NERDTree
	map <C-t> :NERDTreeToggle<CR>

" vimtex
	"let g:tex_flavor='latex'
	let g:vimtex_view_method = 'zathura'
	"let g:vimtex_quickfix_enabled = 0
	let g:vimtex_quickfix_mode=1
	let g:vimtex_quickfix_open_on_warning = 0
	let g:vimtex_quickfix_autoclose_after_keystrokes = 1
	let g:vimtex_compiler_latexmk = {
		\ 'callback': 1,
		\ 'continuous': 1,
		\}
    let g:vimtex_quickfix_latexlog = {
	          \ 'overfull' : 0,
	          \ 'underfull' : 0,
	          \ 'packages' : {
	          \   'default' : 0,
	          \ },
	          \}
	"set conceallevel=1
	"let g:tex_conceal=''

"let g:SuperTabDefaultCompletionType = '<tab>'

" UltiSnips
	let g:UltiSnipsExpandTrigger='<tab>'
	let g:UltiSnipsJumpForwardTrigger='<tab>'
	let g:UltiSnipsJumpBackwardTrigger='<s-tab>'
	let g:UltiSnipsSnippetDirectories = ['/home/neermat/dotfiles/vim/ultisnips']



" General Vim settings
	syntax on
	"colorscheme onedark 
	set background=light
	colorscheme PaperColor
	let mapleader=","
	set autoindent
	set tabstop=4
	set shiftwidth=4
	set dir=/tmp/
	set relativenumber 
	set number

	"set cursorline
	"hi Cursor ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold

	"set hlsearch
	"nnoremap <C-l> :nohl<CR><C-l>:echo "Search Cleared"<CR>
	nnoremap <C-c> :set norelativenumber<CR>:set nonumber<CR>:echo "Line numbers turned off."<CR>
	nnoremap <C-n> :set relativenumber<CR>:set number<CR>:echo "Line numbers turned on."<CR>

	nnoremap n nzzzv
	nnoremap N Nzzzv

	nnoremap H 0
	nnoremap L $
	nnoremap J G
	nnoremap K gg

	map <tab> %

	set backspace=indent,eol,start

	nnoremap <Space> za
	nnoremap <leader>z zMzvzz

	nnoremap vv 0v$

	set listchars=tab:\|\ 
	nnoremap <leader><tab> :set list!<cr>
	set pastetoggle=<F2>
	set mouse=a
	set incsearch

" Language Specific
	" Tabs
		so ~/dotfiles/vim/tabs.vim

	" General
		inoremap <leader>for <esc>Ifor (int i = 0; i < <esc>A; i++) {<enter>}<esc>O<tab>
		inoremap <leader>if <esc>Iif (<esc>A) {<enter>}<esc>O<tab>
		

	" Java
		inoremap <leader>sys <esc>ISystem.out.println(<esc>A);
		vnoremap <leader>sys yOSystem.out.println(<esc>pA);

	" Java
		inoremap <leader>con <esc>Iconsole.log(<esc>A);
		vnoremap <leader>con yOconsole.log(<esc>pA);

	" C++
		inoremap <leader>cout <esc>Istd::cout << <esc>A << std::endl;
		vnoremap <leader>cout yOstd::cout << <esc>pA << std:endl;

	" C
		inoremap <leader>out <esc>Iprintf(<esc>A);<esc>2hi
		vnoremap <leader>out yOprintf(, <esc>pA);<esc>h%a

	" Typescript
		autocmd BufNewFile,BufRead *.ts set syntax=javascript
		autocmd BufNewFile,BufRead *.tsx set syntax=javascript

	" Markup
		inoremap <leader>< <esc>I<<esc>A><esc>yypa/<esc>O<tab>


" File and Window Management 
	inoremap <leader>w <Esc>:w<CR>
	nnoremap <leader>w :w<CR>

	inoremap <leader>q <ESC>:q<CR>
	nnoremap <leader>q :q<CR>

	inoremap <leader>x <ESC>:x<CR>
	nnoremap <leader>x :x<CR>

	nnoremap <leader>e :Ex<CR>
	nnoremap <leader>t :tabnew<CR>:Ex<CR>
	nnoremap <leader>v :vsplit<CR>:w<CR>:Ex<CR>
	nnoremap <leader>s :split<CR>:w<CR>:Ex<CR>

" Return to the same line you left off at
	augroup line_return
		au!
		au BufReadPost *
			\ if line("'\"") > 0 && line("'\"") <= line("$") |
			\	execute 'normal! g`"zvzz' |
			\ endif
	augroup END

" Future stuff
	"Swap line
	"Insert blank below and above

" Vimwiki
"let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
nnoremap <leader>t :VimwikiToggleListItem<CR>



