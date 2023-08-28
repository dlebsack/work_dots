-- [[ Configure Treesitter ]]
-- See `:help nvim-treesitter`
require('nvim-treesitter.configs').setup {
	-- Add languages to be installed here that you want installed for treesitter
	ensure_installed = { 'c', 'cpp', 'go', 'lua', 'python', 'rust', 'tsx', 'typescript', 'vimdoc', 'vim' },
	ignore_install = {},

	auto_install = true,

	highlight = { enable = true },
	indent = { enable = true },
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = '<c-s>',
			node_incremental = '<c-s>',
			scope_incremental = '<c-space>',
			node_decremental = '<c-d>',
		},
	},
	textobjects = {
		select = {
			enable = true,
			lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
			keymaps = {
				-- You can use the capture groups defined in textobjects.scm
				['aa'] = '@parameter.outer',
				['ia'] = '@parameter.inner',
				['af'] = '@function.outer',
				['if'] = '@function.inner',
				['ac'] = '@class.outer',
				['ic'] = '@class.inner',
			},
		},
		move = {
			enable = true,
			set_jumps = true, -- whether to set jumps in the jumplist
			goto_next_start = {
				[']f'] = '@function.outer',
				[']]'] = '@class.outer',
			},
			goto_next_end = {
				[']F'] = '@function.outer',
				[']['] = '@class.outer',
			},
			goto_previous_start = {
				['[f'] = '@function.outer',
				['[['] = '@class.outer',
			},
			goto_previous_end = {
				['[F'] = '@function.outer',
				['[]'] = '@class.outer',
			},
		},
		swap = {
			enable = true,
			swap_next = {
				['<leader>a'] = '@parameter.inner',
			},
			swap_previous = {
				['<leader>A'] = '@parameter.inner',
			},
		},
	},
}

--[[ telescope navigation options

@assignment.inner
@assignment.lhs
@assignment.outer
@assignment.rhs
@attribute.inner
@attribute.outer
@block.inner
@block.outer
@call.inner
@call.outer
@class.inner
@class.outer
@comment.inner
@comment.outer
@conditional.inner
@conditional.outer
@frame.inner
@frame.outer
@function.inner
@function.outer
@loop.inner
@loop.outer
@number.inner
@parameter.inner
@parameter.outer
@regex.inner
@regex.outer
@return.inner
@return.outer
@scopename.inner
@statement.outer
]]
