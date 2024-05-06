local chatgpt = require("chatgpt")
local wk = require("which-key")
wk.register({
	p = {
		name = "ChatGPT",
		e = {
			function()
				chatgpt.edit_with_instructions()
			end,
			"Edit with instructions",
		},
		c = {
			function()
				chatgpt.complete_code()
			end,
			"Complete code",
		},
	},
}, {
	prefix = "<leader>",
	mode = "v",
})
wk.register({
	p = {
		name = "ChatGPT",
		o = {
			function()
				chatgpt.openChat()
			end,
			"Open chat",
		},
	},
}, {
	prefix = "<leader>",
	mode = "n",
})
