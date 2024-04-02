let g:deepl#endpoint = "https://api-free.deepl.com/v2/translate"
let g:deepl#auth_key = readfile(expand('~/.config/deepl.auth_key'))[0]

vmap <Leader>e <Cmd>call deepl#v("EN")<CR>
vmap <Leader>d <Cmd>call deepl#v("DE")<CR>
