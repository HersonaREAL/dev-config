" 基础设置
lua require('basic')
" Packer插件管理
lua require('plugins')
" 快捷键映射
lua require('keybindings')


set background=dark
let g:sonokai_style = 'atlantis'
"斜体
" let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1
colorscheme sonokai 


"plugs
lua require('plug-cfg/nvim-tree')
lua require('plug-cfg/bufferline')
lua require('plug-cfg/nvim-treesitter')
lua require('plug-cfg/nvim-autopairs')
lua require('plug-cfg/lualine')


"coc config
"tab补全
let g:coc_global_extensions = [
    \'coc-json',
    \'coc-python',
    \'coc-cmake',
    \'coc-clangd',
    \'coc-yaml',
    \'coc-java',
    \'coc-tsserver',
    \'coc-snippets',
    \'coc-sh'
    \'coc-markdownlint'
\]
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"ctrl + .开启补全
inoremap <silent><expr> <c-.> coc#refresh()

"回车补全
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" 查找上下补全
nmap <silent> <leader>- <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>= <Plug>(coc-diagnostic-next)

"跳转
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"同符号高亮
autocmd CursorHold * silent call CocActionAsync('highlight')

"显示帮助
nnoremap <silent> <leader>h :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
