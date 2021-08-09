scriptencoding utf-8
" Night RunnerDark (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: Pieter Joost van de Sande

let g:airline#themes#Night RunnerDark#palette = {}

let s:N1   = [ '#322F42' , '#696383' , 237    , 245   ]
let s:N2   = [ '#FBFBF9' , '#514B68' , 231    , 240   ]
let s:N3   = [ '#F7FFB3' , '#322F42' , 223    , 237   ]
let g:airline#themes#Night RunnerDark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Night RunnerDark#palette.normal_modified = {
      \ 'airline_c': [ '#FBFBF9' , '#514B68' , 231    , 240   , ''     ] ,
      \ }

let s:I1 = [ '#322F42' , '#F5FF99' , 237    , 223   ]
let s:I2 = [ '#FBFBF9' , '#6F51E6' , 231    , 62    ]
let s:I3 = [ '#F7FFB3' , '#322F42' , 223    , 237   ]
let g:airline#themes#Night RunnerDark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Night RunnerDark#palette.insert_modified = {
      \ 'airline_c': [ '#FBFBF9' , '#514B68' , 231    , 240   , ''     ] ,
      \ }
let g:airline#themes#Night RunnerDark#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#C1CF4A' , s:I1[2] , 178   , ''     ] ,
      \ }

let g:airline#themes#Night RunnerDark#palette.replace = copy(g:airline#themes#Night RunnerDark#palette.insert)
let g:airline#themes#Night RunnerDark#palette.replace.airline_a = [ s:I2[0]   , '#6F51E6' , s:I2[2] , 62    , ''     ]
let g:airline#themes#Night RunnerDark#palette.replace_modified = g:airline#themes#Night RunnerDark#palette.insert_modified

let s:V1 = [ '#322F42' , '#A690FD' , 237    , 147   ]
let s:V2 = [ '#FBFBF9' , '#6F51E6' , 231    , 62    ]
let s:V3 = [ '#FBFBF9' , '#322F42' , 231    , 237   ]
let g:airline#themes#Night RunnerDark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Night RunnerDark#palette.visual_modified = {
      \ 'airline_c': [ '#FBFBF9' , '#514B68' , 231    , 240   , ''     ] ,
      \ }

let s:IA1 = [ '#514B68' , '#322F42' , 240    , 237   , '' ]
let s:IA2 = [ '#514B68' , '#322F42' , 240    , 237   , '' ]
let s:IA3 = [ '#514B68' , '#322F42' , 240    , 237   , '' ]
let g:airline#themes#Night RunnerDark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Night RunnerDark#palette.inactive_modified = {
      \ 'airline_c': [ '#FBFBF9' , '#514B68' , 231    , 240   , ''     ] ,
      \ }

let g:airline#themes#Night RunnerDark#palette.accents = {
      \ 'red': [ '#6F51E6' , '' , 62    , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Night RunnerDark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#EFEBFF' , '#6F51E6' , 195    , 62    , ''     ],
      \ [ '#FBFBF9' , '#7F63EE' , 231    , 63    , ''     ],
      \ [ '#6F51E6' , '#FBFBF9' , 62     , 231   , 'bold' ])

