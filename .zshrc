source ~/antigen.zsh
# 这里antigen.zsh的保存路径就是 ~/zsh 所以第一行应该是source ~/antigen.zsh
# 加载oh-my-zsh库
antigen use oh-my-zsh
#
# 加载原版oh-my-zsh中的功能(robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle z
antigen bundle paulirish/git-open 

# 语法高亮功能
antigen bundle zsh-users/zsh-syntax-highlighting

# 代码提示功能
antigen bundle zsh-users/zsh-autosuggestions

# 自动补全功能
antigen bundle zsh-users/zsh-completions
#
# 加载主题
#antigen theme robbyrussell
antigen theme random
# 保存更改
antigen apply
#
#
# for ls colors
#LS_COLORS="di=34:ln=35:so=32:pi=33:ex=31:bd=34:cd=34:su=36:sg=36:tw=34:ow=34"
export LS_COLORS
#启用starship
#eval "$(starship init zsh)"

#export PATH=/usr/local/bin:$PATH

export PYENV_ROOT="$HOME/.pyenv"
export LOCAL_PATH="$HOME/.local"
export USER_PATH="/usr"
# export TERM="screen-256color"
export PYTHON_PATH="$HOME/.local/lib/python3.8"
# export VIMPLUG_PATH="$HOME/.vim/plugged"


# powerline
# powerline-daemon -q
# POWERLINE_ZSH_CONTINUATION=1
# POWERLINE_ZSH_SELECT=1

# windows10 on my laptop
# . /home/dentioner/.local/lib/python3.8/site-packages/powerline/bindings/zsh/powerline.zsh
# loongson PC here

export PATH="$PYENV_ROOT/bin:$LOCAL_PATH/bin:USER_PATH/bin:PYTHON_PATH/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
# just windows10:
# eval "$(pyenv virtualenv-init -)"
