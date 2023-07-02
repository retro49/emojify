declare -a stickers
stickers=(😎 🥰 😡 😂 🤔 😲 🤪 🥴 🥶 😇 😭 💀 🤮 😖 😔)
length=$(echo $stickers | wc -w)
local ret_status="%(?:%{$fg_bold[green]%}❱%{$fg_bold[white]%}❱%{$fg_bold[green]%}❱:%{$fg_bold[red]%}😡᙭ %s)"
PROMPT=$'%{$fg[green]%}%n@%m: %{$reset_color%}%{$fg[white]%}%/ %{$reset_color%}%{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}
$stickers[$(($RANDOM % $length)) + 1] ${ret_status} %{$reset_color%}'
PROMPT2="%{$fg_blod[black]%}%_> %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
