" Title:        BurnedBits Plugin
" Description:  A plugin to provide features for use with the  BitBurner game.
" Last Change:  16 August 2023
" Maintainer:   Dan Taylor <https://github.com/mortedecai>

" Prevents the plugin from being loaded multiple times. If the loaded
" variable exists, do nothing more. Otherwise, assign the loaded
" variable and continue running this instance of the plugin.
if exists("g:loadedBurnedBitsPlugin")
    finish
endif
let g:loadedBurnedBitsPlugin = 1

" Exposes the plugin's functions for use as commands in Vimj
command! -nargs=0 BitBurnerVersion call burnedbits#Version()
command! -nargs=? BitBurnerAuth call burnedbits#AuthToken(<f-args>)
command! -nargs=0 BitBurnerClearAuth call burnedbits#ClearAuthToken()

