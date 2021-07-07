scriptencoding utf-8
" NightRunner
" Scheme: Pieter Joost van de Sande

let g:airline#themes#NightRunner#palette = {}

let s:N1   = [ '#322F42' , '#696383' , 53    , 245   ]
let s:N2   = [ '#FBFBF9' , '#514B68' , 231    , 144   ]
let s:N3   = [ '#F7FFB3' , '#322F42' , 223    , 53   ]
let g:airline#themes#NightRunner#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#NightRunner#palette.normal_modified = {
      \ 'airline_c': [ '#FBFBF9' , '#514B68' , 231    , 144   , ''     ] ,
      \ }

let s:I1 = [ '#322F42' , '#F5FF99' , 53    , 223   ]
let s:I2 = [ '#FBFBF9' , '#6F51E6' , 231    , 62    ]
let s:I3 = [ '#F7FFB3' , '#322F42' , 223    , 53   ]
let g:airline#themes#NightRunner#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#NightRunner#palette.insert_modified = {
      \ 'airline_c': [ '#FBFBF9' , '#514B68' , 231    , 144   , ''     ] ,
      \ }
let g:airline#themes#NightRunner#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#C1CF4A' , s:I1[2] , 178   , ''     ] ,
      \ }

let g:airline#themes#NightRunner#palette.replace = copy(g:airline#themes#NightRunner#palette.insert)
let g:airline#themes#NightRunner#palette.replace.airline_a = [ s:I2[0]   , '#6F51E6' , s:I2[2] , 62    , ''     ]
let g:airline#themes#NightRunner#palette.replace_modified = g:airline#themes#NightRunner#palette.insert_modified

let s:V1 = [ '#322F42' , '#A690FD' , 53    , 147   ]
let s:V2 = [ '#FBFBF9' , '#6F51E6' , 231    , 62    ]
let s:V3 = [ '#FBFBF9' , '#322F42' , 231    , 53   ]
let g:airline#themes#NightRunner#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#NightRunner#palette.visual_modified = {
      \ 'airline_c': [ '#FBFBF9' , '#514B68' , 231    , 144   , ''     ] ,
      \ }

let s:IA1 = [ '#514B68' , '#322F42' , 144    , 53   , '' ]
let s:IA2 = [ '#514B68' , '#322F42' , 144    , 53   , '' ]
let s:IA3 = [ '#514B68' , '#322F42' , 144    , 53   , '' ]
let g:airline#themes#NightRunner#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#NightRunner#palette.inactive_modified = {
      \ 'airline_c': [ '#FBFBF9' , '#514B68' , 231    , 144   , ''     ] ,
      \ }

let g:airline#themes#NightRunner#palette.accents = {
      \ 'red': [ '#6F51E6' , '' , 62    , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#NightRunner#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#EFEBFF' , '#6F51E6' , 195    , 62    , ''     ],
      \ [ '#FBFBF9' , '#7F63EE' , 231    , 63    , ''     ],
      \ [ '#6F51E6' , '#FBFBF9' , 62     , 231   , 'bold' ])

