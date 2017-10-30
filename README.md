# vim-dpaste

## Installation

Use your plugin manager of choice.

- [Pathogen](https://github.com/tpope/vim-pathogen)
  - `git clone https://github.com/kpron/vim-dpaste ~/.vim/bundle/vim-dpaste`
- [Vundle](https://github.com/gmarik/vundle)
  - Add `Bundle 'https://github.com/kpron/vim-dpaste'` to .vimrc
  - Run `:BundleInstall`
- [NeoBundle](https://github.com/Shougo/neobundle.vim)
  - Add `NeoBundle 'https://github.com/kpron/vim-dpaste'` to .vimrc
  - Run `:NeoBundleInstall`
- [vim-plug](https://github.com/junegunn/vim-plug)
  - Add `Plug 'https://github.com/kpron/vim-dpaste'` to .vimrc
  - Run `:PlugInstall`


## Usage

1. Use visual mode for select text.
2. Call `:Dpaste` command for save paste to [dpaste](https://dpaste.de) service.
3. Get snippet url from bottom of the window.

## Parameters

- You can redefine paste url (if you have your own dpaste instanse) by putting this line to vimrc file:
    ```
    " vim-dpaste params
    let g:dpaste_url = "http://my_own_dpaste.hot/api/"
    ```
