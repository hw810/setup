local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"

function prompt_char {
	if [ $UID -eq 0 ]; then echo "%{$fg[red]%}#%{$reset_color%}"; else echo $ret_status; fi
}


# PROMPT='${ret_status} %{$fg[cyan]%}%~%{$reset_color%} $(git_prompt_info) '

# PROMPT='%{$fg[cyan]%}(%n)@[%m]%{$reset_color%} %{$fg[yellow]%}%~%{$reset_color%} $(git_prompt_info)
PROMPT='%{$fg[green]%}%n@%{$fg[blue]%}%m:%{$reset_color%} %{$fg[yellow]%}%/%{$reset_color%} $(git_prompt_info)
%_ $(prompt_char) '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"


RPROMPT='%{$fg[green]%}[%D %*]%{$reset_color%}'
