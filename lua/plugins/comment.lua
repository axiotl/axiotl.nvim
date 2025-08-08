return {
    {
        'numToStr/Comment.nvim',
        dependencies = {
            'JoosepAlviste/nvim-ts-context-commentstring',
        },
        opts = {},
        config = function()
            local comment = require("Comment")
            comment.setup {
                sticky = false,
                toggler = {
                    line = '<leader>co',
                },
                opleader = {
                    block = 'gc',
                    line = '<leader>co',
                },
                pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
            }
        end,
    }
}
