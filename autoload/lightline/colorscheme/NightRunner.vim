" Filename: Night Runner.vim (https://github.com/atelierbram/Base2Tone-vim/blob/master/autoload/lightline/colorscheme/Night Runner.vim)
" Scheme: Pieter Joost van de Sande
" Info: http://base2t.one/
" License: MIT License

let s:cuicolors = {
      \ 'base03': [ '8', '236   ', 'DarkGray' ],
      \ 'base02': [ '0', '237   ', 'Black' ],
      \ 'base01': [ '10', '245   ', 'LightGreen' ],
      \ 'base00': [ '11', '246   ', 'LightYellow' ],
      \ 'base0':  [ '12', '248   ', 'LightBlue' ],
      \ 'base1':  [ '14', '250   ', 'LightCyan' ],
      \ 'base2': [ '7', '189   ', 'LightGray' ],
      \ 'base3': [ '15', '195   ', 'White' ],
      \ 'yellow': [ '3', '223   ', 'DarkYellow' ],
      \ 'orange': [ '9', '221   ', 'LightRed' ],
      \ 'red': [ '1', '62    ', 'DarkRed' ],
      \ 'magenta': [ '5', '141   ', 'DarkMagenta' ],
      \ 'violet': [ '13', '63    ', 'LightMagenta' ],
      \ 'blue': [ '4', '69    ', 'DarkBlue' ],
      \ 'cyan': [ '6', '178   ', 'DarkCyan' ],
      \ 'green': [ '2', '220   ', 'DarkGreen' ],
      \ }

" The following condition only applies for the console and is the same
" condition vim-colors-Night Runner uses to determine which set of colors
" to use.
let s:Night Runner_termcolors = get(g:, 'Night Runner_termcolors', 256)
if s:Night Runner_termcolors != 256 && &t_Co >= 16
  let s:cuiindex = 0
elseif s:Night Runner_termcolors == 256
  let s:cuiindex = 1
else
  let s:cuiindex = 2
endif

let s:base03 = [ '#272433', s:cuicolors.base03[s:cuiindex] ]
let s:base02 = [ '#322F42', s:cuicolors.base02[s:cuiindex] ]
let s:base01 = [ '#696383', s:cuicolors.base01[s:cuiindex] ]
let s:base00 = [ '#7E7897', s:cuicolors.base00[s:cuiindex] ]
let s:base0 = [ '#9490A7', s:cuicolors.base0[s:cuiindex] ]
let s:base1 = [ '#ABA7B9', s:cuicolors.base1[s:cuiindex] ]
let s:base2 = [ '#CFC3FE', s:cuicolors.base2[s:cuiindex] ]
let s:base3 = [ '#EFEBFF', s:cuicolors.base3[s:cuiindex] ]
let s:yellow = [ '#F7FFB3', s:cuicolors.yellow[s:cuiindex] ]
let s:orange = [ '#F0FC83', s:cuicolors.orange[s:cuiindex] ]
let s:red = [ '#6F51E6', s:cuicolors.red[s:cuiindex] ]
let s:magenta = [ '#9E86FD', s:cuicolors.magenta[s:cuiindex] ]
let s:violet = [ '#7F63EE', s:cuicolors.violet[s:cuiindex] ]
let s:blue = [ '#8E75F5', s:cuicolors.blue[s:cuiindex] ]
let s:cyan = [ '#C1CF4A', s:cuicolors.cyan[s:cuiindex] ]
let s:green = [ '#EAF872', s:cuicolors.green[s:cuiindex] ]

if lightline#colorscheme#background() ==# 'light'
  let [ s:base03, s:base3 ] = [ s:base3, s:base03 ]
  let [ s:base02, s:base2 ] = [ s:base2, s:base02 ]
  let [ s:base01, s:base1 ] = [ s:base1, s:base01 ]
  let [ s:base00, s:base0 ] = [ s:base0, s:base00 ]
  let [ s:blue, s:green ] = [ s:green, s:blue ]
endif

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:base03, s:blue ], [ s:base03, s:base00 ] ]
let s:p.normal.right = [ [ s:base03, s:base1 ], [ s:base03, s:base00 ] ]
let s:p.inactive.right = [ [ s:base03, s:base00 ], [ s:base0, s:base02 ] ]
let s:p.inactive.left =  [ [ s:base0, s:base02 ], [ s:base0, s:base02 ] ]
let s:p.insert.left = [ [ s:base03, s:green ], [ s:base03, s:base00 ] ]
let s:p.replace.left = [ [ s:base03, s:red ], [ s:base03, s:base00 ] ]
let s:p.visual.left = [ [ s:base03, s:magenta ], [ s:base03, s:base00 ] ]
let s:p.normal.middle = [ [ s:base1, s:base02 ] ]
let s:p.inactive.middle = [ [ s:base01, s:base02 ] ]
let s:p.tabline.left = [ [ s:base03, s:base00 ] ]
let s:p.tabline.tabsel = [ [ s:base03, s:base1 ] ]
let s:p.tabline.middle = [ [ s:base0, s:base02 ] ]
let s:p.tabline.right = copy(s:p.normal.right)
let s:p.normal.error = [ [ s:base03, s:red ] ]
let s:p.normal.warning = [ [ s:base03, s:yellow ] ]

let g:lightline#colorscheme#Night Runner#palette = lightline#colorscheme#flatten(s:p)
let s:base03 = [ '#272433', 236   ]
let s:base02 = [ '#322F42', 237   ]
let s:base01 = [ '#696383', 245   ]
let s:base00 = [ '#7E7897', 246   ]
let s:base0 = [ '#9490A7', 248   ]
let s:base1 = [ '#ABA7B9', 250   ]
let s:base2 = [ '#CFC3FE', 189   ]
let s:base3 = [ '#EFEBFF', 195   ]
let s:yellow = [ '#F7FFB3', 223   ]
let s:orange = [ '#F0FC83', 221   ]
let s:red = [ '#6F51E6', 62    ]
let s:magenta = [ '#9E86FD', 141   ]
let s:violet = [ '#7F63EE', 63    ]
let s:blue = [ '#8E75F5', 69    ]
let s:cyan = [ '#C1CF4A', 178   ]
let s:green = [ '#EAF872', 220   ]

if lightline#colorscheme#background() ==# 'light'
  let [ s:base03, s:base3 ] = [ s:base3, s:base03 ]
  let [ s:base02, s:base2 ] = [ s:base2, s:base02 ]
  let [ s:base01, s:base1 ] = [ s:base1, s:base01 ]
  let [ s:base00, s:base0 ] = [ s:base0, s:base00 ]
  let [ s:blue, s:green ] = [ s:green, s:blue ]
endif

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:base03, s:blue ], [ s:base03, s:base00 ] ]
let s:p.normal.right = [ [ s:base03, s:base1 ], [ s:base03, s:base00 ] ]
let s:p.inactive.right = [ [ s:base03, s:base00 ], [ s:base0, s:base02 ] ]
let s:p.inactive.left =  [ [ s:base0, s:base02 ], [ s:base0, s:base02 ] ]
let s:p.insert.left = [ [ s:base03, s:green ], [ s:base03, s:base00 ] ]
let s:p.replace.left = [ [ s:base03, s:red ], [ s:base03, s:base00 ] ]
let s:p.visual.left = [ [ s:base03, s:magenta ], [ s:base03, s:base00 ] ]
let s:p.normal.middle = [ [ s:base1, s:base02 ] ]
let s:p.inactive.middle = [ [ s:base01, s:base02 ] ]
let s:p.tabline.left = [ [ s:base03, s:base00 ] ]
let s:p.tabline.tabsel = [ [ s:base03, s:base1 ] ]
let s:p.tabline.middle = [ [ s:base0, s:base02 ] ]
let s:p.tabline.right = copy(s:p.normal.right)
let s:p.normal.error = [ [ s:base03, s:red ] ]
let s:p.normal.warning = [ [ s:base03, s:yellow ] ]

let g:lightline#colorscheme#Night Runner#palette = lightline#colorscheme#flatten(s:p)

