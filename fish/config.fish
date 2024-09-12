if status is-interactive
	# Commands to run in interactive sessions can go here

	# abbreviations
	abbr -a gs git status
	
	fish_add_path /opt/homebrew/bin						# include items from homebrew installs
	set -gx EDITOR "nvim"							# set the default editor

	set -x LS_COLORS (vivid generate rose-pine)				# set LS_COLORS env for fd
	fzf_configure_bindings --directory=\cf 					# configures bindings for fzf
        set fzf_directory_opts --bind "ctrl-o:execute($EDITOR {} &> /dev/tty)"	# binds ctrl-o to open using the default editor

        pyenv init - | source
end
