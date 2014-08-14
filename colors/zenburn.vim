" Vim color file
" Maintainer:   Jani Nurminen <slinky@iki.fi>
" Last Change:  $Id: zenburn.vim,v 2.13 2009/10/24 10:16:01 slinky Exp $
" URL:      	http://slinky.imukuppi.org/zenburnpage/
" License:      GPL
"
" Nothing too fancy, just some alien fruit salad to keep you in the zone.
" This syntax file was designed to be used with dark environments and 
" low light situations. Of course, if it works during a daybright office, go
" ahead :)
"
" Owes heavily to other Vim color files! With special mentions
" to "BlackDust", "Camo" and "Desert".
"
" To install, copy to ~/.vim/colors directory.
"
" Alternatively, you can use Vimball installation:
"     vim zenburn.vba
"     :so %
"     :q
"
" For details, see :help vimball
"
" After installation, use it with :colorscheme zenburn.
" See also :help syntax
"
" Credits:
"  - Jani Nurminen - original Zenburn
"  - Steve Hall & Cream posse - higher-contrast Visual selection
"  - Kurt Maier - 256 color console coloring, low and high contrast toggle,
"                 bug fixing
"  - Charlie - spotted too bright StatusLine in non-high contrast mode
"  - Pablo Castellazzi - CursorLine fix for 256 color mode
"  - Tim Smith - force dark background
"  - John Gabriele - spotted bad Ignore-group handling
"  - Zac Thompson - spotted invisible NonText in low contrast mode
"  - Christophe-Marie Duquesne - suggested making a Vimball
"
" CONFIGURABLE PARAMETERS:
"
" You can use the default (don't set any parameters), or you can
" set some parameters to tweak the Zenburn colours.
"
" To use them, put them into your .vimrc file before loading the color scheme,
" example:
"    let g:zenburn_high_Contrast=1
"    colors zenburn
"
" * You can now set a darker background for bright environments. To activate, use:
"   contrast Zenburn, use:
"
"      let g:zenburn_high_Contrast = 1
"
" * For example, Vim help files uses the Ignore-group for the pipes in tags 
"   like "|somelink.txt|". By default, the pipes are not visible, as they
"   map to Ignore group. If you wish to enable coloring of the Ignore group,
"   set the following parameter to 1. Warning, it might make some syntax files
"   look strange.
"
"      let g:zenburn_color_also_Ignore = 1
"
" * To get more contrast to the Visual selection, use
"
"      let g:zenburn_alternate_Visual = 1
"
" * To use alternate colouring for Error message, use
"
"      let g:zenburn_alternate_Error = 1
"
" * The new default for Include is a duller orange. To use the original
"   colouring for Include, use
"
"      let g:zenburn_alternate_Include = 1
"
" * Work-around to a Vim bug, it seems to misinterpret ctermfg and 234 and 237
"   as light values, and sets background to light for some people. If you have
"   this problem, use:
"
"      let g:zenburn_force_dark_Background = 1
"
" NOTE:
"
" * To turn the parameter(s) back to defaults, use UNLET:
"
"      unlet g:zenburn_alternate_Include
"
"   Setting to 0 won't work!
"
" That's it, enjoy!
"
" TODO
"   - Visual alternate color is broken? Try GVim >= 7.0.66 if you have trouble
"   - IME colouring (CursorIM)

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="zenburn"

hi Boolean         guifg=#dca3a3
hi Character       guifg=#dca3a3 gui=NONE
hi Comment         guifg=#7f9f7f gui=NONE
hi Conditional     guifg=#f0dfaf gui=NONE
hi Constant        guifg=#dca3a3 gui=NONE
hi Cursor          guifg=#000d18 guibg=#8faf9f gui=NONE
hi Debug           guifg=#bca3a3 gui=NONE
hi Define          guifg=#ffcfaf gui=NONE
hi Delimiter       guifg=#8f8f8f
hi DiffAdd         guifg=#709080 guibg=#313c36 gui=NONE
hi DiffChange      guibg=#333333
hi DiffDelete      guifg=#333333 guibg=#464646
hi DiffText        guifg=#ecbcbc guibg=#41363c gui=NONE
hi Directory       guifg=#dcdccc gui=NONE
hi ErrorMsg        guifg=#80d4aa guibg=#2f2f2f gui=NONE
hi Exception       guifg=#c3bf9f gui=NONE
hi Float           guifg=#c0bed1
hi FoldColumn      guifg=#93b3a3 guibg=#3f4040
hi ColorColumn                   guibg=#3f4040
hi Folded          guifg=#93b3a3 guibg=#3f4040
hi Function        guifg=#efef8f
hi Identifier      guifg=#efdcbc
hi IncSearch       guibg=#f8f893 guifg=#385f38
hi Keyword         guifg=#f0dfaf gui=NONE
hi Label           guifg=#dfcfaf gui=NONE
hi LineNr          guifg=#9fafaf guibg=#262626
hi Macro           guifg=#ffcfaf gui=NONE
hi ModeMsg         guifg=#ffcfaf gui=none
hi MoreMsg         guifg=#ffffff gui=NONE
hi Number          guifg=#8cd0d3
hi Operator        guifg=#f0efd0
hi PreCondit       guifg=#dfaf8f gui=NONE
hi PreProc         guifg=#ffcfaf gui=NONE
hi Question        guifg=#ffffff gui=NONE
hi Repeat          guifg=#ffd7a7 gui=NONE
hi Search          guifg=#ffffe0 guibg=#284f28
hi SpecialChar     guifg=#dca3a3 gui=NONE
hi SpecialComment  guifg=#82a282 gui=NONE
hi Special         guifg=#cfbfaf
hi SpecialKey      guifg=#9ece9e
hi Statement       guifg=#e3ceab gui=none
hi StatusLine      guifg=#313633 guibg=#ccdc90
hi StatusLineNC    guifg=#2e3330 guibg=#88b090
hi StorageClass    guifg=#c3bf9f gui=NONE
hi String          guifg=#cc9393
hi Structure       guifg=#efefaf gui=NONE
hi Tag             guifg=#e89393 gui=NONE
hi Title           guifg=#efefef gui=NONE
hi Todo            guifg=#dfdfdf guibg=bg gui=NONE
hi Typedef         guifg=#dfe4cf gui=NONE
hi Type            guifg=#dfdfbf gui=NONE
hi Underlined      guifg=#dcdccc gui=NONE
hi VertSplit       guifg=#2e3330 guibg=#688060
hi VisualNOS       guifg=#333333 guibg=#f18c96 gui=NONE
hi WarningMsg      guifg=#ffffff guibg=#333333 gui=NONE
hi WildMenu        guibg=#2c302d guifg=#cbecd0 gui=NONE

hi SpellBad   guisp=#bc6c4c guifg=#dc8c6c
hi SpellCap   guisp=#6c6c9c guifg=#8c8cbc
hi SpellRare  guisp=#bc6c9c guifg=#bc8cbc
hi SpellLocal guisp=#7cac7c guifg=#9ccc9c

" Entering Kurt zone
if &t_Co > 255
    hi Boolean         ctermfg=181
    hi Character       ctermfg=181   cterm=NONE
    hi Comment         ctermfg=108
    hi Conditional     ctermfg=223   cterm=NONE
    hi Constant        ctermfg=181   cterm=NONE
    hi Cursor          ctermfg=233   ctermbg=109     cterm=NONE
    hi Debug           ctermfg=181   cterm=NONE
    hi Define          ctermfg=223   cterm=NONE
    hi Delimiter       ctermfg=245
    hi DiffAdd         ctermfg=66    ctermbg=237     cterm=NONE
    hi DiffChange      ctermbg=236
    hi DiffDelete      ctermfg=236   ctermbg=238
    hi DiffText        ctermfg=217   ctermbg=237     cterm=NONE
    hi Directory       ctermfg=188   cterm=NONE
    hi ErrorMsg        ctermfg=115   ctermbg=236     cterm=NONE
    hi Exception       ctermfg=249   cterm=NONE
    hi Float           ctermfg=251
    hi FoldColumn      ctermfg=109   ctermbg=238
    hi ColorColumn                   ctermbg=238
    hi Folded          ctermfg=109   ctermbg=238
    hi Function        ctermfg=228
    hi Identifier      ctermfg=223
    hi IncSearch       ctermbg=228   ctermfg=238
    hi Keyword         ctermfg=223   cterm=NONE
    hi Label           ctermfg=187   cterm=underline
    hi LineNr          ctermfg=248   ctermbg=235
    hi Macro           ctermfg=223   cterm=NONE
    hi ModeMsg         ctermfg=223   cterm=none
    hi MoreMsg         ctermfg=15    cterm=NONE
    hi Number          ctermfg=116
    hi Operator        ctermfg=230
    hi PreCondit       ctermfg=180   cterm=NONE
    hi PreProc         ctermfg=223   cterm=NONE
    hi Question        ctermfg=15    cterm=NONE
    hi Repeat          ctermfg=223   cterm=NONE
    hi Search          ctermfg=230   ctermbg=236
    hi SpecialChar     ctermfg=181   cterm=NONE
    hi SpecialComment  ctermfg=108   cterm=NONE
    hi Special         ctermfg=181
    hi SpecialKey      ctermfg=151
    hi Statement       ctermfg=187   ctermbg=234     cterm=none
    hi StatusLine      ctermfg=236   ctermbg=186
    hi StatusLineNC    ctermfg=235   ctermbg=108
    hi StorageClass    ctermfg=249   cterm=NONE
    hi String          ctermfg=174
    hi Structure       ctermfg=229   cterm=NONE
    hi Tag             ctermfg=181   cterm=NONE
    hi Title           ctermfg=7     ctermbg=234     cterm=NONE
    hi Todo            ctermfg=15   ctermbg=234     cterm=NONE
    hi Typedef         ctermfg=253   cterm=NONE
    hi Type            ctermfg=187   cterm=NONE
    hi Underlined      ctermfg=188   ctermbg=234     cterm=NONE
    hi VertSplit       ctermfg=236   ctermbg=65
    hi VisualNOS       ctermfg=236   ctermbg=210     cterm=NONE
    hi WarningMsg      ctermfg=15    ctermbg=236     cterm=NONE
    hi WildMenu        ctermbg=236   ctermfg=194     cterm=NONE
    hi CursorLine      ctermbg=236   cterm=none

    " spellchecking, always "bright" background
    hi SpellLocal ctermfg=14  ctermbg=237
    hi SpellBad   ctermfg=9   ctermbg=237
    hi SpellCap   ctermfg=12  ctermbg=237
    hi SpellRare  ctermfg=13  ctermbg=237

    " pmenu
    hi PMenu      ctermfg=248  ctermbg=0
    hi PMenuSel   ctermfg=223 ctermbg=235

    if exists("g:zenburn_high_Contrast")
        hi Normal ctermfg=188 ctermbg=234
        hi NonText         ctermfg=238

        if exists("g:zenburn_color_also_Ignore")
            hi Ignore          ctermfg=238
        endif
    else
        hi Normal ctermfg=188 ctermbg=237
        hi Cursor          ctermbg=109
        hi diffadd         ctermbg=237
        hi diffdelete      ctermbg=238
        hi difftext        ctermbg=237
        hi errormsg        ctermbg=237
        hi foldcolumn      ctermbg=238
        hi folded          ctermbg=238
        hi incsearch       ctermbg=228
        hi linenr          ctermbg=238
        hi search          ctermbg=238
        hi statement       ctermbg=237
        hi statusline      ctermbg=144
        hi statuslinenc    ctermbg=108
        hi title           ctermbg=237
        hi todo            ctermbg=210
        hi underlined      ctermbg=237
        hi vertsplit       ctermbg=65
        hi visualnos       ctermbg=210
        hi warningmsg      ctermbg=236
        hi wildmenu        ctermbg=236
        hi NonText         ctermfg=240
        
        if exists("g:zenburn_color_also_Ignore")
            hi Ignore          ctermfg=240
        endif
    endif

    if exists("g:zenburn_alternate_Error")
        " use more jumpy Error
        hi Error ctermfg=210 ctermbg=52 gui=NONE
    else
        " default is something more zenburn-compatible
        hi Error ctermfg=228 ctermbg=95 gui=NONE
    endif
endif

if exists("g:zenburn_force_dark_Background")
    " Force dark background, because of a bug in VIM:  VIM sets background
    " automatically during "hi Normal ctermfg=X"; it misinterprets the high
    " value (234 or 237 above) as a light color, and wrongly sets background to
    " light.  See ":help highlight" for details.
    set background=dark
endif

if exists("g:zenburn_high_Contrast")
    " use new darker background
    hi Normal          guifg=#dcdccc guibg=#1f1f1f
    hi CursorLine      guibg=#121212 gui=NONE
    hi Pmenu           guibg=#242424 guifg=#ccccbc
    hi PMenuSel        guibg=#353a37 guifg=#ccdc90 gui=NONE
    hi PmenuSbar       guibg=#2e3330 guifg=#000000
    hi PMenuThumb      guibg=#a0afa0 guifg=#040404
    hi MatchParen      guifg=#f0f0c0 guibg=#383838 gui=NONE
    hi SignColumn      guifg=#9fafaf guibg=#181818 gui=NONE
    hi TabLineFill     guifg=#cfcfaf guibg=#181818 gui=NONE
    hi TabLineSel      guifg=#efefef guibg=#1c1c1b gui=NONE
    hi TabLine         guifg=#b6bf98 guibg=#181818 gui=NONE
    hi CursorColumn    guifg=#dcdccc guibg=#2b2b2b
    hi NonText         guifg=#404040 gui=NONE
else
    " Original, lighter background
    hi Normal          guifg=#dcdccc guibg=#3f3f3f
    hi CursorLine      guibg=#434443
    hi Pmenu           guibg=#2c2e2e guifg=#9f9f9f
    hi PMenuSel        guibg=#242424 guifg=#d0d0a0 gui=NONE
    hi PmenuSbar       guibg=#2e3330 guifg=#000000
    hi PMenuThumb      guibg=#a0afa0 guifg=#040404
    hi MatchParen      guifg=#b2b2a0 guibg=#2e2e2e gui=NONE
    hi SignColumn      guifg=#9fafaf guibg=#343434 gui=NONE
    hi TabLineFill     guifg=#cfcfaf guibg=#353535 gui=NONE
    hi TabLineSel      guifg=#efefef guibg=#3a3a39 gui=NONE
    hi TabLine         guifg=#b6bf98 guibg=#353535 gui=NONE
    hi CursorColumn    guifg=#dcdccc guibg=#4f4f4f
    hi NonText         guifg=#5b605e gui=NONE
endif


if exists("g:zenburn_alternate_Visual")
    " Visual with more contrast, thanks to Steve Hall & Cream posse
    " gui=none fixes weird highlight problem in at least GVim 7.0.66, thanks to Kurt Maier
    hi Visual          guifg=#000000 guibg=#71d3b4 gui=none
    hi VisualNOS       guifg=#000000 guibg=#71d3b4 gui=none
else
    " use default visual
    hi Visual          guifg=#233323 guibg=#71d3b4 gui=none
    hi VisualNOS       guifg=#233323 guibg=#71d3b4 gui=none
endif

if exists("g:zenburn_alternate_Error")
    " use more jumpy Error
    hi Error        guifg=#e37170 guibg=#664040 gui=NONE
else
    " default is something more zenburn-compatible
    hi Error        guifg=#e37170 guibg=#3d3535 gui=none
endif

if exists("g:zenburn_alternate_Include")
    " original setting
    hi Include      guifg=#ffcfaf gui=NONE
else
    " new, less contrasted one
    hi Include      guifg=#dfaf8f gui=NONE
endif

if exists("g:zenburn_color_also_Ignore")
    " color the Ignore groups
    " note: if you get strange coloring for your files, turn this off (unlet)
    hi Ignore guifg=#545a4f
endif

" TODO check for more obscure syntax groups that they're ok
