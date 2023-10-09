require("telescope").load_extension("git_worktree")

vim.keymap.set('n', '<leader>ws', "<CMD>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>",
	{ desc = '[w]orktree [s]witch' })
-- <Enter> - switches to that worktree
-- <c-d> - deletes that worktree
-- <c-f> - toggles forcing of the next deletion
-- vim.keymap.set('n', '<leader>wn', worktree_new, { desc = '[w]orktree [n]ew' })
vim.keymap.set('n', '<leader>wn', "<CMD>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>",
	{ desc = '[w]orktree [n]ew' })
