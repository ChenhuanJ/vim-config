" Only apply in coding filetypes (adjust as needed)
augroup AutoClosePairs
  autocmd!
  autocmd FileType python,c,cpp,java,javascript,typescript,lua,sh call s:SetupAutoClose()
augroup END

function! s:SetupAutoClose() abort
  " --- Basic pair completion ---
  inoremap <buffer> ' ''<Left>
  inoremap <buffer> " ""<Left>
  inoremap <buffer> ` ``<Left>
  inoremap <buffer> ( ()<Left>
  inoremap <buffer> [ []<Left>
  inoremap <buffer> { {}<Left>

  " --- Autoclose with ; or , inside pairs ---
  inoremap <buffer> '; '';<Left><Left>
  inoremap <buffer> ', '',<Left><Left>
  inoremap <buffer> `; ``;<Left><Left>
  inoremap <buffer> `, ``,<Left><Left>
  inoremap <buffer> "; "";<Left><Left>
  inoremap <buffer> ", "",<Left><Left>
  inoremap <buffer> (; ();<Left><Left>
  inoremap <buffer> (, (),<Left><Left>
  inoremap <buffer> [; [];<Left><Left>
  inoremap <buffer> [, [],<Left><Left>
  inoremap <buffer> {; {};<Left><Left>
  inoremap <buffer> {, {},<Left><Left>

  " --- Autoclose with Tab after pair ---
  inoremap <buffer> '<Tab> ''
  inoremap <buffer> `<Tab> ``
  inoremap <buffer> "<Tab> ""
  inoremap <buffer> (<Tab> ()
  inoremap <buffer> [<Tab> []
  inoremap <buffer> {<Tab> {}

  " --- Autoclose + newline safely (stay in insert mode) ---
  " Use <C-o> to run a single normal command without leaving insert mode
  inoremap <buffer> '<CR> '<CR>'<C-o>k
  inoremap <buffer> `<CR> `<CR>`<C-o>k
  inoremap <buffer> "<CR> "<CR>"<C-o>k
  inoremap <buffer> (<CR> (<CR>)<C-o>k
  inoremap <buffer> [<CR> [<CR>]<C-o>k
  inoremap <buffer> {<CR> {<CR>}<C-o>k

  " --- Autoclose + newline with ; or , ---
  inoremap <buffer> ';<CR> '<CR>';<C-o>k
  inoremap <buffer> ',<CR> '<CR>',<C-o>k
  inoremap <buffer> `;<CR> `<CR>`;<C-o>k
  inoremap <buffer> `,<CR> `<CR>`,<C-o>k
  inoremap <buffer> ";<CR> "<CR>";<C-o>k
  inoremap <buffer> ",<CR> "<CR>",<C-o>k
  inoremap <buffer> (;<CR> (<CR>);<C-o>k
  inoremap <buffer> (,<CR> (<CR>),<C-o>k
  inoremap <buffer> [;<CR> [<CR>];<C-o>k
  inoremap <buffer> [,<CR> [<CR>],<C-o>k
  inoremap <buffer> {;<CR> {<CR>};<C-o>k
  inoremap <buffer> {,<CR> {<CR>},<C-o>k
endfunction
