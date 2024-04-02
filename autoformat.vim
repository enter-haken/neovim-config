" needed for chiel92/vim-autoformat
" https://github.com/vim-autoformat/vim-autoformat#requirement
"
" requirements:
"
" python3 -m pip install pynvim
"
" Collecting pynvim
"   Downloading pynvim-0.4.2.tar.gz (42 kB)
"      |████████████████████████████████| 42 kB 437 kB/s
" Collecting msgpack>=0.5.0
"   Downloading msgpack-1.0.0-cp37-cp37m-manylinux1_x86_64.whl (275 kB)
"      |████████████████████████████████| 275 kB 4.5 MB/s
" Collecting greenlet
"   Downloading greenlet-0.4.17-cp37-cp37m-manylinux1_x86_64.whl (45 kB)
"      |████████████████████████████████| 45 kB 2.2 MB/s
" Using legacy 'setup.py install' for pynvim, since package 'wheel' is not installed.
" Installing collected packages: msgpack, greenlet, pynvim
"     Running setup.py install for pynvim ... done
" Successfully installed greenlet-0.4.17 msgpack-1.0.0 pynvim-0.4.2

let g:python3_host_prog='/usr/bin/python3'

let g:formatdef_sqlformat = '"pg_format --wrap-limit 80 --keep-newline"'
let g:formatters_sql = ['sqlformat']

"" let g:custom_prettier = '"prettier --stdin-filepath ".expand("%:p").(&textwidth ? " --print-width ".&textwidth : "")." --tab-width=".shiftwidth()'

let g:formatdef_custom_prettier = '"prettier --stdin-filepath ".expand("%:p").(&textwidth ? " --print-width ".&textwidth : "")." --tab-width=2 --print-width=80 --prose-wrap=always"'

let g:formatters_markdown = ['custom_prettier']

nmap <Leader>a :Autoformat<CR>
