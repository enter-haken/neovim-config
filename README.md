# neovim config

This is my neovim config.
I use neovim mostly for software development task, which reflects my configuration.

This is a rewrite of my [original][1] configuration.

# requirements

You can find all requirements including `neovim` itself in the `.tools-version` file.
This file is used by [asdf][2].

You can install all requirements by calling

```
$ asdf install
``` 

This will add packages for elixir, erlang, neovim, nodejs and yarn.

## before first start

Before the first start, you must install [plug][3].

```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

## the first two starts

```
nvim +PlugInstall
```

will install all necessary plugins.
After the install is completed, you should restart `nvim`.
All `coc-extensions` will be installed on second start.
From that moment on, you are ready.

# General plugins 

| plugin                    | description                        |
| ------------------------- | ---------------------------------- |
| `nanotech/jellybeans.vim` | color theme                        |
| `scrooloose/nerdtree`     | file explorer                      |
| `ctrlpvim/ctrlp.vim`      | full path fuzzy file finder        |
| `bling/vim-airline`       | status line                        |
| `chiel92/vim-autoformat`  | autoformat for several languages   |

# Language server related plugins

| plugin                    | description                          |
| ------------------------- | ------------------------------------ |
| `neovim/nvim-lspconfig`   | setups the language server           |
| `eoclide/coc.nvim`        | intellisense engine with LSP support |

# Elixir related plugins

| plugin                      | description                                  | 
| --------------------------- | -------------------------------------------- | 
| `elixir-editors/vim-elixir` | elixir support for vim (syntax highlighting) |

# TODO 

* add custom elixir snippets

# Contact

Jan Frederik Hake, <jan_hake@gmx.de>. [@enter_haken](https://twitter.com/enter_haken) on Twitter. [hake.one](https://hake.one)

[1]: https://github.com/enter-haken/dotfiles/blob/master/conf/vimrc
[2]: https://github.com/asdf-vm/asdf
[3]: https://github.com/junegunn/vim-plug

