
" Vim color file
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last Change:	2006 Apr 15

" This color scheme uses a light grey background.

" First remove all existing highlighting.
set background=light
hi clear
" if exists("syntax_on")
"   syntax reset
" endif

let colors_name = "morning"

"hi Normal ctermfg=Black ctermbg=LightGrey guifg=Black guibg=grey90
hi Normal ctermfg=Black ctermbg=LightGrey guifg=#311B0B guibg=#FFF1D9

" Groups used in the 'highlight' and 'guicursor' options default value.
hi ErrorMsg term=standout ctermbg=DarkRed ctermfg=White guibg=#962D21 guifg=White
hi Error term=standout ctermbg=DarkRed ctermfg=White guibg=#962D21 guifg=White
hi IncSearch term=reverse cterm=reverse gui=reverse
hi ModeMsg term=bold cterm=bold gui=bold
hi StatusLine term=reverse,bold cterm=reverse,bold gui=reverse,bold
hi StatusLineNC term=reverse cterm=reverse gui=reverse
hi VertSplit term=reverse cterm=reverse gui=reverse
hi Visual term=reverse ctermbg=grey guibg=LightSkyBlue2
hi VisualNOS term=underline,bold cterm=underline,bold gui=underline,bold
hi DiffText term=reverse cterm=bold ctermbg=LightGreen gui=italic guibg=LightYellow
hi Cursor guibg=Green guifg=NONE
hi lCursor guibg=Cyan guifg=NONE
hi Directory term=bold ctermfg=DarkBlue guifg=#305081
hi LineNr term=underline ctermfg=Brown guifg=#A45A02 guibg=#ffd787
hi MoreMsg term=bold ctermfg=DarkGreen gui=bold guifg=#2D551D
hi NonText term=bold ctermfg=Blue gui=bold guifg=#23224A guibg=#F5E1C8
hi Question term=standout ctermfg=DarkGreen gui=bold guifg=#2D551D
hi Search term=reverse ctermbg=Yellow ctermfg=NONE guibg=Yellow guifg=NONE
hi SpecialKey term=bold ctermfg=DarkBlue guifg=#304081
hi Title term=bold ctermfg=DarkMagenta gui=bold guifg=#89315E
hi WarningMsg term=standout ctermfg=DarkRed guifg=#773910
hi WildMenu term=standout ctermbg=Yellow ctermfg=Black guibg=#CBC608 guifg=#311B0B
hi Folded term=standout ctermbg=Grey ctermfg=DarkBlue guibg=LightGrey guifg=#304081
hi FoldColumn term=standout ctermbg=Grey ctermfg=DarkBlue guibg=Grey guifg=#304081
hi DiffAdd term=bold ctermbg=LightBlue guibg=LightGreen
hi DiffChange term=bold ctermbg=LightMagenta guibg=LightMagenta
hi DiffDelete term=bold ctermfg=Blue ctermbg=LightCyan gui=bold guifg=bg guibg=LightRed
hi CursorLine term=underline cterm=underline guibg=grey90
hi CursorColumn term=reverse ctermbg=grey guibg=LightRed
hi TabLine ctermbg=Red guibg=Brown

" Colors for syntax highlighting
hi Comment guifg=#33328A
hi Constant term=underline ctermfg=DarkRed guifg=#B63D31
hi Special term=bold ctermfg=DarkMagenta guifg=#89315E guibg=grey95
hi Statement gui=bold guifg=#A45A02
hi Type gui=NONE guifg=#2D651D
if &t_Co > 8
  hi Statement term=bold cterm=bold ctermfg=Brown
endif
hi Ignore ctermfg=LightGrey guifg=#FFF1D9

" vim: sw=2
