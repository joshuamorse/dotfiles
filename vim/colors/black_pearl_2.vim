" jmflava color scheme

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "jmflava"

" Special for HTML
hi htmlTag guifg=#B4D3E2 guibg=#000000
hi htmlEndTag guifg=#B4D3E2 guibg=#000000
hi htmlTagName guifg=#FFFFFF guibg=#000000

" PHP
hi Function guifg=#80D500 guibg=#000000
hi phpVarSelector guifg=#FFFFFF " $ in a var
hi phpFunctions guifg=#8AA6C1 guibg=#000000
hi phpOperator guifg=#FFFFFF guibg=#000000
hi phpParent guifg=#DDDDDD guibg=#000000
hi Include guifg=#22ea43 " include function guibg=#000000
hi Define guifg=#22ea43 " echo guibg=#000000

" CSS
hi cssSelectorOp guifg=#B53B3C guibg=#000000
hi link cssSelectorOp2 cssSelectorOp guibg=#000000


" General colors
hi CursorLine guibg=#000000
hi Identifier guifg=#FFFFFF gui=bold " php vars guibg=#000000
hi Normal guifg=#8AA6C1 guibg=#000000
hi NonText guifg=#070707 guibg=#000000 gui=none
hi Cursor guifg=black guibg=white guibg=#000000
hi LineNr guifg=#3D3D3D guibg=black guibg=#000000
hi VertSplit guifg=#202020 guibg=#202020 guibg=#000000
hi StatusLine guifg=#CCCCCC guibg=#202020 gui=italic guibg=#000000
hi StatusLineNC guifg=black guibg=#202020 guibg=#000000
hi Folded guifg=#a0a8b0 guibg=#384048 guibg=#000000
hi Title guifg=#f6f3e8 guibg=#000000
hi Visual guibg=#262D51 guibg=#000000
hi SpecialKey guifg=#808080 guibg=#343434 guibg=#000000
hi WildMenu guifg=green guibg=yellow guibg=#000000
hi PmenuSbar guifg=black guibg=white guibg=#000000
hi Error gui=undercurl guibg=#000000
hi ErrorMsg guifg=white guibg=#FF6C60 gui=BOLD guibg=#000000
hi WarningMsg guifg=white guibg=#FF6C60 gui=BOLD guibg=#000000

" Message displayed in lower left, such as --INSERT--
hi ModeMsg guifg=black       guibg=#C6C5FE     gui=BOLD      ctermfg=black       ctermbg=cyan        cterm=BOLD

"if version >= 700 " Vim 7.x specific colors
"  hi CursorLine     guifg=NONE        guibg=#121212     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=BOLD
"  hi CursorColumn   guifg=NONE        guibg=#121212     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=BOLD
"  hi MatchParen     guifg=#f6f3e8     guibg=#857b6f     gui=BOLD      ctermfg=white       ctermbg=darkgray    cterm=NONE
"  hi Pmenu          guifg=#f6f3e8     guibg=#444444     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
"  hi PmenuSel       guifg=#333333     guibg=#cae682     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
"  hi Search         guifg=NONE        guibg=NONE        gui=underline ctermfg=NONE        ctermbg=NONE        cterm=underline
"endif

" Syntax highlighting
hi Comment guifg=#428BDD gui=italic guibg=#000000
hi String guifg=#CC66FF guibg=#000000
hi Number guifg=#EDDD5A guibg=#000000
hi Keyword guifg=#FF9D00 guibg=#000000
hi PreProc guifg=#FF9D00 guibg=#000000
hi Conditional guifg=#FF9D00 guibg=#000000
hi Todo guifg=#8f8f8f guibg=#000000
hi Constant guifg=#999999 guibg=#000000
hi Type guifg=#FFFFB6 guibg=#000000
hi Statement guifg=#6699CC guibg=#000000
hi Special guifg=black guibg=#000000
hi Delimiter guifg=#00A0A0 guibg=#000000
hi Operator guifg=white guibg=#000000

hi link Character       Constant
hi link Boolean         Constant
hi link Float           Number
hi link Repeat          Statement
hi link Label           Statement
hi link Exception       Statement
hi link Include         PreProc
hi link Define          PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Special
hi link SpecialComment  Special
hi link Debug           Special
