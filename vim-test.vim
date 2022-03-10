" In a test file runs the test nearest to the cursor, otherwise runs the last nearest test. In test frameworks that don't support line numbers it will polyfill this functionality with regexes.
nmap <silent> <leader>rt :TestNearest<CR>

" In a test file runs all tests in the current file, otherwise runs the last file tests.
nmap <silent> <leader>rT :TestFile<CR>

" Runs the whole test suite (if the current file is a test file, runs that framework's test suite, otherwise determines the test framework from the last run test).
nmap <silent> <leader>ra :TestSuite<CR>

" Runs the last test.
nmap <silent> <leader>rl :TestLast<CR>

"Visits the test file from which you last run your tests (useful when you're trying to make a test pass, and you dive deep into application code and close your test buffer to make more space, and once you've made it pass you want to go back to the test file to write more tests).
nmap <silent> <leader>rg :TestVisit<CR>

let test#strategy = "neoterm"

" see also: https://subvisual.com/blog/posts/vim-elixir-ide
