return {
    {
        "rose-pine/neovim", 
        name = "rose-pine",
	lazy = false,  -- Load it immediately
        config = function()
            vim.cmd("colorscheme rose-pine")
	    require("rose-pine").setup({
	        variant = "auto",
    	    })
        end,
    }
}
