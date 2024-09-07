local focusmap = function(direction)
        vim.keymap.set('n', '<Leader>'..direction, function()
                require('focus').split_command(direction)
        end, { desc = string.format('Create or move to split (%s)', direction) })
end

return {
        {
                "nvim-focus/focus.nvim",
                config = function()
                        local focus = require("focus")

                        focus.setup({
                                ui = {
                                        hybridnumber = true,
                                }
                        })

                        focusmap('h')
                        focusmap('j')
                        focusmap('k')
                        focusmap('l')
                end
        }
}
