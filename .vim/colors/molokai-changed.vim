" Vim color file
"
" Author: Tomas Restrepo <tomas@winterdom.com>
"
" Note: Based on the monokai theme for textmate
" by Wimer Hazenberg and its darker variant
" by Hamish Stuart Macpherson
"

hi clear

set background=dark
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="molokai-changed"

if exists("g:molokai_original")
    let s:molokai_original = g:molokai_original
else
    let s:molokai_original = 0
endif

if s:molokai_original == 1
   hi Normal          guifg=#F8F8F2 guibg=#272822
   hi Comment         guifg=#75715E
   hi SpecialComment  guifg=#465457
   hi CursorLine                    guibg=#322F2F
   hi CursorLineNR    guifg=#F8F8F2
   hi CursorColumn                  guibg=#232526
   hi ColorColumn                   guibg=#272822
   hi LineNr          guifg=#BCBCBC guibg=#272822
   hi NonText         guifg=#75715E
   hi SpecialKey      guifg=#75715E
else
   hi Normal          guifg=#F8F8F2 guibg=#1B1D1E
   hi Comment         guifg=#465457
   hi link SpecialComment Comment
   hi CursorLine                    guibg=#293739
   hi CursorColumn                  guibg=#293739
   hi ColorColumn                   guibg=#232526
   hi LineNr          guifg=#465457 guibg=#232526
   hi NonText         guifg=#465457
   hi SpecialKey      guifg=#465457
end
" Vim > 5.8 specific colors {{{1
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi Cursor          guifg=#000000 guibg=#F8F8F0

    " Auto-completion Popup Menu colors {{{2
    hi Pmenu           guifg=#66D9EF guibg=#000000
    hi PmenuSel                      guibg=#808080
    hi PmenuSbar                     guibg=#080808
    hi PmenuThumb      guifg=#66D9EF

    "Spell checking colors {{{2
    if has("spell")
        hi SpellBad    guisp=#E22E2E gui=undercurl
        hi SpellCap    guisp=#7070F0 gui=undercurl
        hi SpellLocal  guisp=#70F0F0 gui=undercurl
        hi SpellRare   guisp=#FFFFFF gui=undercurl
    endif
endif "}}}1
" Messages and other texts' colors {{{1
hi WarningMsg      guifg=#FFFFFF guibg=#333333
hi ErrorMsg        guifg=#F92672 guibg=#232526
hi ModeMsg         guifg=#E6DB74
hi MoreMsg         guifg=#E6DB74
hi Question        guifg=#66D9EF
hi Directory       guifg=#A6E22E
hi Title           guifg=#ef5939

" Diff colors {{{1
if has ("diff")
    hi DiffAdd         guifg=#A6E22E
    hi DiffChange      guifg=#E6DB74
    hi DiffDelete      guifg=#F92672
    hi DiffText                      guibg=#4C4745 gui=italic
endif

" Outline, Fold, & Sign columns colors {{{1
if has("folding")
    hi Folded          guifg=#465457 guibg=#000000
    hi FoldColumn      guifg=#465457 guibg=#000000
endif
if has ("signs")
    hi SignColumn      guifg=#A6E22E guibg=#232526
endif

" Search & Special characters' colors {{{1
if has("extra_search")
    hi Search          guifg=#FFFFFF guibg=#455354
    hi IncSearch       guifg=#C4BE89 guibg=#000000
endif
hi SpecialKey      guifg=#66D9EF               gui=italic

" Window Bars, Status line & Visual mode colors {{{1
hi StatusLine      guifg=#455354 guibg=fg
if has("windows")
    hi StatusLineNC    guifg=#808080 guibg=#080808
endif

if has("vertsplit")
    hi VertSplit       guifg=#808080 guibg=#080808
endif

if has("wildmenu")
    hi WildMenu        guifg=#66D9EF guibg=#000000
endif

if has("visual")
    hi Visual                        guibg=#403D3D
    hi VisualNOS                     guibg=#403D3D
endif

"Syntax highlighting colors {{{1
hi Character       guifg=#E6DB74
hi String          guifg=#E6DB74
hi Constant        guifg=#AE81FF
hi Number          guifg=#AE81FF
hi Float           guifg=#AE81FF
hi Boolean         guifg=#AE81FF

hi Identifier      guifg=#FD971F
hi Function        guifg=#A6E22E

hi Statement       guifg=#F92672 term=NONE gui=NONE
hi Conditional     guifg=#F92672
hi Repeat          guifg=#F92672
hi Operator        guifg=#F92672
hi Keyword         guifg=#F92672
hi Label           guifg=#E6DB74               gui=none
hi Exception       guifg=#A6E22E

hi Type            guifg=#66D9EF               gui=none
hi StorageClass    guifg=#F92672               gui=italic
hi Structure       guifg=#66D9EF
hi Typedef         guifg=#66D9EF

hi PreProc         guifg=#A6E22E
hi PreCondit       guifg=#A6E22E
hi Include         guifg=#F92672
hi Define          guifg=#C4BE89               gui=italic
hi Macro           guifg=#C4BE89

hi Special         guifg=#66D9EF guibg=bg      gui=italic
hi SpecialChar     guifg=#F92672
hi Tag             guifg=#F92672               gui=italic
hi Delimiter       guifg=#8F8F8F
hi Debug           guifg=#BCA3A3

hi MatchParen      guifg=#000000 guibg=#FD971F
hi Error           guifg=#960050 guibg=#1E0010
hi Ignore          guifg=#808080 guibg=bg
hi Todo            guifg=#FFFFFF guibg=bg
hi Underlined      guifg=#808080               gui=underline
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
   hi Boolean         ctermfg=135
   hi Character       ctermfg=144
   hi Number          ctermfg=135
   hi String          ctermfg=144
   hi Conditional     ctermfg=161
   hi Constant        ctermfg=135
   hi Cursor          ctermfg=16  ctermbg=253
   hi Debug           ctermfg=225
   hi Define          ctermfg=81
   hi Delimiter       ctermfg=241

   hi DiffAdd                     ctermbg=24
   hi DiffChange      ctermfg=181 ctermbg=239
   hi DiffDelete      ctermfg=162 ctermbg=53
   hi DiffText                    ctermbg=102

   hi Directory       ctermfg=118
   hi Error           ctermfg=219 ctermbg=89
   hi ErrorMsg        ctermfg=199 ctermbg=16
   hi Exception       ctermfg=118
   hi Float           ctermfg=135
   hi FoldColumn      ctermfg=67  ctermbg=16
   hi Folded          ctermfg=67  ctermbg=16
   hi Function        ctermfg=118
   hi Identifier      ctermfg=208               cterm=none
   hi Ignore          ctermfg=244 ctermbg=232
   hi IncSearch       ctermfg=193 ctermbg=16

   hi Keyword         ctermfg=161
   hi Label           ctermfg=229               cterm=none
   hi Macro           ctermfg=193
   hi SpecialKey      ctermfg=81

   hi MatchParen      ctermfg=16  ctermbg=208
   hi ModeMsg         ctermfg=229
   hi MoreMsg         ctermfg=229
   hi Operator        ctermfg=161

   " complete menu
   hi Pmenu           ctermfg=81  ctermbg=16
   hi PmenuSel                    ctermbg=244
   hi PmenuSbar                   ctermbg=232
   hi PmenuThumb      ctermfg=81

   hi PreCondit       ctermfg=118
   hi PreProc         ctermfg=118
   hi Question        ctermfg=81
   hi Repeat          ctermfg=161
   hi Search          ctermfg=253 ctermbg=66

   " marks column
   hi SignColumn      ctermfg=118 ctermbg=235
   hi SpecialChar     ctermfg=161
   hi SpecialComment  ctermfg=245
   hi Special         ctermfg=81  ctermbg=232

   hi Statement       ctermfg=161
   hi StatusLine      ctermfg=238 ctermbg=253
   hi StatusLineNC    ctermfg=244 ctermbg=232
   hi StorageClass    ctermfg=208
   hi Structure       ctermfg=81
   hi Tag             ctermfg=161
   hi Title           ctermfg=166
   hi Todo            ctermfg=231 ctermbg=232

   hi Typedef         ctermfg=81
   hi Type            ctermfg=81                cterm=none
   hi Underlined      ctermfg=244               cterm=underline

   hi VertSplit       ctermfg=244 ctermbg=232
   hi VisualNOS                   ctermbg=238
   hi Visual                      ctermbg=235
   hi WarningMsg      ctermfg=231 ctermbg=238
   hi WildMenu        ctermfg=81  ctermbg=16

   hi Comment         ctermfg=59
   hi CursorColumn                ctermbg=234
   hi ColorColumn                 ctermbg=234
   hi LineNr          ctermfg=250 ctermbg=234
   hi NonText         ctermfg=59
   hi SpecialKey      ctermfg=59
end

