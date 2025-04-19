-- easily comment visual regions/lines
return  {
	"numToStr/Comment.nvim",
	opts = {},
	config = function()
		vim.keymap.set("n", "<C-c>", require("Comment.api").toggle.linewise.current, {desc= "Toggle comment on region/line", noremap = true, silent = true})
		vim.keymap.set("v", "<C-c>", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", {desc= "Toggle comment on region/line", noremap = true, silent = true})
	end,
}
