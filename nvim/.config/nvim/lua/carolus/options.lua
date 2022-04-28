local options = {
		backup = false,
		clipboard = "unnamedplus",
		cmdheight = 2,
		completeopt = {"menuone","noselect"},
		conceallevel = 0,
		fileencoding = "utf-8",
		hlsearch = true,
		ignorecase = true,
		smartcase = true,
		pumheight = 10,
		showmode = false,
		showtabline = 2,
		smartindent = true,
		splitbelow = true,
		splitright = true,
		swapfile = false,
		termguicolors = true,
		timeoutlen = 400,
		undofile = true,
		updatetime = 1000,
		writebackup = false,
		expandtab =true,
		shiftwidth = 4,
		tabstop = 4,
		cursorline = true,
        cursorcolumn = true,
		number = true,
		relativenumber =true,
		numberwidth = 4,
		signcolumn = "yes",
		wrap = false,
		scrolloff = 8, 
		sidescrolloff = 8,
		guifont = "monospace:h17",
        belloff = "all",
}
vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work
vim.cmd [[autocmd BufLeave *.c py3f /usr/share/clang/clang-format.py]]
vim.cmd [[autocmd BufLeave *.h py3f /usr/share/clang/clang-format.py]]
