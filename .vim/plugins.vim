call plug#begin('~/.vim/plugged')

" UI
Plug 'itchyny/lightline.vim' " the bar at the bottom
Plug 'tpope/vim-fugitive' " vim-git integration
Plug 'junegunn/goyo.vim' " for centered zen mode with :Goyo
Plug 'luochen1990/rainbow' " color brackets
Plug 'tpope/vim-dispatch' " async dispatch for commands

" Linting
Plug 'w0rp/ale' " linting

" Themes
Plug 'rakr/vim-two-firewatch'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'rakr/vim-one'

" File Finding
Plug 'scrooloose/nerdtree' " file tree
Plug 'junegunn/fzf' " idek it's useful
Plug 'junegunn/fzf.vim' " ^^^

" Text Editing Shortcuts
Plug 'SirVer/ultisnips' " snippets
Plug 'rocky1638/vim-snippets' " useful snippets
Plug 'tpope/vim-surround' " for surrounding with ys<motion><delimiter>
                            " or use S<delimiter> in visual mode
Plug 'scrooloose/nerdcommenter' " for commenting, use <leader>c<space>
Plug 'mattn/emmet-vim' " emmet
Plug 'easymotion/vim-easymotion'
Plug 'takac/vim-hardtime' " timeout on basic motion keys

" Note Taking
Plug 'godlygeek/tabular' " required for vim-markdown below
Plug 'plasticboy/vim-markdown' " everything markdown
Plug 'lervag/wiki.vim'
Plug 'iamcco/markdown-preview.nvim'

" Others
Plug 'mtth/scratch.vim' " scratchpad
Plug 'sheerun/vim-polyglot' " downloads a bunch of language info
Plug 'ajh17/VimCompletesMe' " improve tab autocompletion
Plug 'christoomey/vim-tmux-navigator'
Plug 'romainl/vim-devdocs'
Plug 'yuttie/comfortable-motion.vim' " comfortable scrolling

call plug#end()
