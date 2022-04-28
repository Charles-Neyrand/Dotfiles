vim.api.nvim_exec( [[
function! Goyo_enter()
    set noshowmode
    set noshowcmd
    set scrolloff=999
    set nocursorline
    set nocursorcolumn
    Limelight
endfunction

]],true)

vim.api.nvim_exec ([[
function! Goyo_leave()
    set showmode
    set showcmd
    set scrolloff=5
    set cursorline
    set cursorcolumn
  Limelight!
endfunction]],true)

vim.cmd [[
autocmd! User GoyoEnter nested call Goyo_enter()
]]

vim.cmd [[
autocmd! User GoyoLeave nested call Goyo_leave()
]]

--Limelight

vim.g.limelight_conceal_ctermfg = 240
vim.g.limelight_conceal_guifg = '#777777'
