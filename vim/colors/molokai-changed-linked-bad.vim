" Vim color file
"
" Author: Tomas Restrepo <tomas@winterdom.com>
"
" Note: Based on the monokai theme for textmate
" by Wimer Hazenberg and its darker variant
" by Hamish Stuart Macpherson
"
" THE 2048 COLORS:
" #faf8ef
" #776e65
" #bbada0
" #d8d4d0
" #8f7a66
"
" #eee4da
" #f9f6f2
" #ede0c8
" #f59563
" #f67c5f
" #f65e3b
" #edcf72
" #edcc61
" #edc850
" #edc53f
" #edc22e
" #3c3a32

" #faf8ef #faf8ef
" #ede0c8 #ede0c8
" #d8d4d0 #d8d4d0
" #9f7a66 #8f7a66
" #bbada0 #bbada0
" #f2f8ef #faf8ef
" #ede0c8 #ede0c8
" #f9f6f2 #f9f6f2
" #bbada0 #bbada0
" #eee4da #eee4da
" #eee4da #eee4da
" #bbada0 #bbada0
" #8f7a66 #8f7a66
" #776e65 #776e65
" #776e65 #776e65
" #3c3a32 #3c3a32
" #3c3a32 #3c3a32
" #3c3a32 #3c3a32
" #f59563 #f59563
" #f65e3b #f65e3b
" #ef5939 #f65e3b
" #FD971F
" #edc850 #edc850
" #edc22e #edc22e
" #edc22e #edc22e
" #f67c5f #f67c5f
" #f59563 #f59563
" #f59563 #f59563
" #3c3a32 #3c3a32
"
hi clear

set background=dark
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="molokai-changed-linked"

if exists("g:molokai_original")
    let s:molokai_original = g:molokai_original
else
    let s:molokai_original = 0
endif

if s:molokai_original == 1
   hi Normal          guifg=#3c3a32 guibg=#f2f8ef
   hi Comment         guifg=#8f7a66
   hi SpecialComment  guifg=#eee4da
   hi CursorLine                    guibg=#ede0c8
   hi link CursorColumn Cursorline
   hi link ColorColumn Cursorline
   hi LineNr          guifg=#BCBCBC guibg=#f2f8ef
   hi NonText         guifg=#8f7a66
   hi link SpecialKey NonText
else
   hi Normal          guifg=#3c3a32 guibg=#d8d4d0
   hi Comment         guifg=#eee4da
   hi link SpecialComment Comment
   hi CursorLine                    guibg=#ede0c8
   hi link CursorColumn Cursorline
   hi ColorColumn                   guibg=#bbada0
   hi LineNr          guifg=#eee4da guibg=#bbada0
   hi link SpecialKey NonText
end
" Vim > 5.8 specific colors {{{1
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi Cursor          guifg=#faf8ef guibg=#3c3a32

    " Auto-completion Popup Menu colors {{{2
    hi Pmenu           guifg=#edc22e guibg=#faf8ef
    hi PmenuSel                      guibg=#776e65
    hi PmenuSbar                     guibg=#ede0c8
    hi PmenuThumb      guifg=#edc22e

    "Spell checking colors {{{2
    if has("spell")
        hi SpellBad    guisp=#f59563 gui=undercurl
        hi SpellCap    guisp=#f59563 gui=undercurl
        hi SpellLocal  guisp=#f67c5f gui=undercurl
        hi SpellRare   guisp=#3c3a32 gui=undercurl
    endif
endif "}}}1
" Messages and other texts' colors {{{1
hi WarningMsg      guifg=#3c3a32 guibg=#f9f6f2
hi ErrorMsg        guifg=#f65e3b guibg=#bbada0
hi ModeMsg         guifg=#edc850
hi link MoreMsg ModeMsg
hi Question        guifg=#edc22e
hi Directory       guifg=#edc22e
hi Title           guifg=#ef5939

" Diff colors {{{1
if has ("diff")
    hi DiffAdd         guifg=#edc22e
    hi DiffChange      guifg=#edc850
    hi DiffDelete      guifg=#f65e3b
    hi DiffText                      guibg=#bbada0 gui=italic
endif

" Outline, Fold, & Sign columns colors {{{1
if has("folding")
    hi Folded          guifg=#eee4da guibg=#faf8ef
    hi link FoldColumn Folded
endif
if has ("signs")
    hi SignColumn      guifg=#edc22e guibg=#bbada0
endif

" Search & Special characters' colors {{{1
if has("extra_search")
    hi Search          guifg=#3c3a32 guibg=#eee4da
    hi IncSearch       guifg=#3c3a32 guibg=#faf8ef
endif
hi SpecialKey      guifg=#edc22e               gui=italic

" Window Bars, Status line & Visual mode colors {{{1
hi StatusLine      guifg=#eee4da guibg=fg
if has("windows")
    hi StatusLineNC    guifg=#776e65 guibg=#ede0c8
endif

if has("vertsplit")
    hi VertSplit       guifg=#776e65 guibg=#ede0c8
endif

if has("wildmenu")
    hi WildMenu        guifg=#edc22e guibg=#faf8ef
endif

if has("visual")
    hi Visual                        guibg=#bbada0
    hi link VisualNOS Visual
endif

"Syntax highlighting colors {{{1
hi Character       guifg=#edc850
hi link String Character
hi Constant        guifg=#f59562
hi link Number  Constant
hi link Float   Constant
hi link Boolean Constant

hi Identifier      guifg=#FD971F
hi Function        guifg=#edc22e
hi link Exception Function
" hi link PreProc   Function
hi PreProc         guifg=#edc22e
hi link PreCondit Function

hi Statement       guifg=#f65e3b term=NONE gui=NONE
hi Conditional     guifg=#f65e3b
hi link Repeat   Conditional
hi link Operator Conditional
hi link Keyword  Conditional
hi Label           guifg=#edc850               gui=none

hi Type            guifg=#edc22e               gui=none
hi StorageClass    guifg=#f65e3b               gui=italic
hi Structure       guifg=#edc22e
hi link Typedef Structure

hi Include         guifg=#f65e3b
hi Define          guifg=#3c3a32               gui=italic
hi link Macro Define

hi Special         guifg=#edc22e guibg=bg      gui=italic
hi SpecialChar     guifg=#f65e3b
hi Tag             guifg=#f65e3b               gui=italic
hi Delimiter       guifg=#776e65
hi Debug           guifg=#3c3a32

hi MatchParen      guifg=#faf8ef guibg=#FD971F
hi Error           guifg=#960050 guibg=#9f7a66
hi Ignore          guifg=#776e65 guibg=bg
hi Todo            guifg=#3c3a32 guibg=bg
hi Underlined      guifg=#776e65               gui=underline
"}}}1

"
" Support for 256-color terminal
"
if &t_Co == 256
   if s:molokai_original == 1
      hi Normal       ctermfg=252 ctermbg=234
      hi CursorLine               ctermbg=235   cterm=none
   else
      hi Normal       ctermfg=252 ctermbg=233
      hi CursorLine               ctermbg=234   cterm=none
   endif
   hi Cursor          ctermfg=16  ctermbg=253
   hi MatchParen      ctermfg=16  ctermbg=208
   hi DiffAdd                     ctermbg=24
   hi Comment         ctermfg=59
   hi link NonText    Comment
   hi link SpecialKey Comment
   hi FoldColumn      ctermfg=67  ctermbg=16
   hi link Folded FoldColumn
   hi Type            ctermfg=81                cterm=none
   hi Define          ctermfg=81
   hi link SpecialKey Define
   hi link PmenuThumb Define
   hi link Question   Define
   hi link Structure  Define
   hi link Typedef    Define
   hi Pmenu           ctermfg=81  ctermbg=16
   hi link WildMenu Pmenu
   hi Special         ctermfg=81  ctermbg=232
   hi DiffText                    ctermbg=102
   hi Function       ctermfg=118
   hi link PreCondit Function
   hi link PreProc   Function
   hi link Directory Function
   hi link Exception Function
   hi SignColumn      ctermfg=118 ctermbg=235
   hi Boolean         ctermfg=135
   hi link Constant Boolean
   hi link Number Boolean
   hi link Float Boolean
   hi Character       ctermfg=144
   hi link String Character
   hi IncSearch       ctermfg=193 ctermbg=16
   hi Conditional     ctermfg=161
   hi link Keyword     Conditional
   hi link Operator    Conditional
   hi link Repeat      Conditional
   hi link SpecialChar Conditional
   hi link Statement   Conditional
   hi link Tag         Conditional
   hi DiffDelete      ctermfg=162 ctermbg=53
   hi Title           ctermfg=166
   hi DiffChange      ctermfg=181 ctermbg=239
   hi Macro           ctermfg=193
   hi ErrorMsg        ctermfg=199 ctermbg=16
   hi Identifier      ctermfg=208               cterm=none
   hi Error           ctermfg=219 ctermbg=89
   hi Debug           ctermfg=225
   hi Label           ctermfg=229               cterm=none
   hi link ModeMsg Label
   hi link MoreMsg Label
   hi PmenuSbar                   ctermbg=232
   hi Delimiter       ctermfg=241
   hi PmenuSel                    ctermbg=244
   hi Ignore          ctermfg=244 ctermbg=232
   hi SpecialComment  ctermfg=245
   hi Search          ctermfg=253 ctermbg=66
   hi StorageClass    ctermfg=208
   hi Todo            ctermfg=231 ctermbg=232
   hi WarningMsg      ctermfg=231 ctermbg=238
   hi CursorColumn                ctermbg=234
   hi link ColorColumn CursorColumn
   hi Visual                      ctermbg=235
   hi StatusLine      ctermfg=238 ctermbg=253
   hi VisualNOS                   ctermbg=238
   hi StatusLineNC    ctermfg=244 ctermbg=232
   hi link VertSplit StatusLineNC
   hi Underlined      ctermfg=244               cterm=underline
   hi LineNr          ctermfg=250 ctermbg=234



end

