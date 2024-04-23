## init.lua

My minimalist neovim config I use for school and personal projects.

### Requirements

1. [neovim](https://github.com/neovim/neovim) > v0.9.0

2. [ripgrep](https://github.com/BurntSushi/ripgrep)

3. [sharkdp/fd](https://github.com/sharkdp/fd)

**Optional** [Nerdfont](https://www.nerdfonts.com/)

### Installation

1. Backup existing nvim config if you have one:

`mv ~/.config/nvim/ ~/.config/nvim.bak/`

2. Clone this repo to **~/.config/nvim**
> git clone https://github.com/KupaJablek/init.lua.git ~/.config/nvim/

3. Run neovim and wait for [lazy.nvim](https://github.com/folke/lazy.nvim) to install and sync all of your packages!

### Remaps + Settings

Plugin configs, setup and mappings can be found in their respective files in `/lua/plugins/*that_plugin*.lua`

General Editor settings can be found below:

|    setting     |      file     |
| -------------- | ------------- |
| Colours        | `colours.lua` |
| General remaps | `remaps.lua`  |
| Vim options    | `opts.lua`    |
