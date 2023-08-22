" Title:        BitBurner Plugin
" Description:  A plugin to provide features for use with the  BitBurner game.
" Last Change:  16 August 2023
" Maintainer:   Dan Taylor <https://github.com/mortedecai>

" Prevents the plugin from being loaded multiple times. If the loaded
" variable exists, do nothing more. Otherwise, assign the loaded
" variable and continue running this instance of the plugin.
if exists("g:loadedBitBurnerPlugin")
    finish
endif
let g:loadedBitBurnerPlugin = 1

" Exposes the plugin's functions for use as commands in Vimj
command! -nargs=0 BitBurnerVersion call bitburner#Version()
