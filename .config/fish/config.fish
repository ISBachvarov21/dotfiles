function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
    printf '%s@%s %s%s%s > ' $USER $hostname \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

function fish_greeting
	neofetch
end

#funcsave fish_greeting

if status is-interactive
    # Commands to run in interactive sessions can go here

end

starship init fish | source
if test -f ~/.cache/ags/user/generated/terminal/sequences.txt
    cat ~/.cache/ags/user/generated/terminal/sequences.txt
end

alias pamcan=pacman
alias discord=discord-screenaudio

# function fish_prompt
#   set_color cyan; echo (pwd)
#   set_color green; echo '> '
# end
#

