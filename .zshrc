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
