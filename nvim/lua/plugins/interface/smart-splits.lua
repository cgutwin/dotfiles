return {
        {
                "mrjones2014/smart-splits.nvim",
                lazy = false,
                keys = {
                        {
                                "<S-Left>",
                                function ()
                                        require('smart-splits').resize_left()
                                end,
                                mode = {"i", "n", "v"},
                        },
                        {
                                "<S-Down>",
                                function ()
                                        require('smart-splits').resize_down()
                                end,
                                mode = {"i", "n", "v"},
                        },
                        {
                                "<S-Up>",
                                function ()
                                        require('smart-splits').resize_up()
                                end,
                                mode = {"i", "n", "v"},
                        },
                        {
                                "<S-Right>",
                                function ()
                                        require('smart-splits').resize_right()
                                end,
                                mode = {"i", "n", "v"},
                        },
                },
                config = function()
                        require("smart-splits").setup()
                end
        }
}
