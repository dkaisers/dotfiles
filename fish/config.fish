# disable greeting
set fish_greeting

# set syntax colors
set fish_color_autosuggestion 555
set fish_color_command 005f87
set fish_color_comment 00875f
set fish_color_error 5f0000 --bold
set fish_color_param normal
set fish_color_redirection normal
set $fish_color_valid_path normal

# aliases
alias .. "cd .."
alias ... "cd ../.."
alias .... "cd ../../.."
alias gs "git status"
alias ga "git add"
alias gc "git commit"
alias gcm "git commit -m"
alias gl "git log"
alias gp "git push"

# clear anything
clear

# check for git repository
function _git_branch_name
	echo (git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
end

# check for git status
function _is_git_dirty
	echo (git status -s --ignore-submodules=dirty ^/dev/null)
end

function fish_prompt
	printf "\n"
	set_color cyan
	printf "%s " (whoami)
	set_color normal
	printf "at "
	set_color green
	printf "%s " (hostname)
	set_color normal
	printf "in "
	set_color --bold yellow
	printf "%s " (pwd)

# git stuff
	if [ (_git_branch_name) ]
		set_color normal
		printf "on git:"
		set_color cyan
		echo -n (git symbolic-ref HEAD | sed -e 's,.*/\(.*\),\1,')

		if [ (_is_git_dirty) ]
			set_color --bold red
		else
			set_color --bold green
		end
		printf " ●"
	end

	set_color --bold red
	printf "\n⌦  "
	set_color normal
end

function fish_right_prompt
	set_color yellow
	date "+[%H:%M:%S]"
end
