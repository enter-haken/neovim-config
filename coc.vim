let g:coc_global_extensions = [
      \'coc-css', 
      \'coc-docker',
      \'coc-elixir', 
      \'coc-html', 
      \'coc-json', 
      \'coc-prettier', 
      \'coc-pyright',
      \'coc-python', 
      \'coc-rls',
      \'coc-sh',
      \'coc-snippets', 
      \'@yaegassy/coc-tailwindcss3',
      \'coc-tsserver', 
      \'coc-yaml'
      \]

autocmd FileType scss setl iskeyword+=@-@

nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gy <Plug>(coc-type-definition)
nmap <silent> <leader>gi <Plug>(coc-implementation)
nmap <silent> <leader>gr <Plug>(coc-references)

" TODO: toggle codeLens
" call coc#config('codeLens', {'enable': v:true})
" call coc#config('codeLens', {'enable': v:false})
