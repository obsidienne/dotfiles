let g:ale_lint_on_text_changed = 'never' " only lint on save
let g:ale_lint_on_insert_leave = 0 " again, only lint on save

let g:ale_linters = {}
let g:ale_linters.elixir = ['elixir-ls', 'credo']

let g:ale_elixir_elixir_ls_release = expand("/Users/claudio/Development/elixir-ls/rel")
let g:ale_elixir_elixir_ls_config = {'elixirLS': {'dialyzerEnabled': v:false}}

let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace']}
let g:ale_fixers.elixir = ['mix_format']

set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_completion_enabled = 1
