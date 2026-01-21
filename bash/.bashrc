#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -a --color=auto'
alias ll='ls -l --color=auto'
alias grep='grep --color=auto'
alias ga='git add -A'
alias gcom='git commit -m'
alias gst='git status'
alias pull='git pull'
alias push='git push'
alias t='tree -L 1'


# Add this to your ~/.bashrc

# Git prompt function
git_prompt() {
    local branch=$(git symbolic-ref --short HEAD 2>/dev/null)
    if [ -n "$branch" ]; then
        local status=$(git status --porcelain 2>/dev/null)
        local indicators=""
        
        # Check for various git states
        if echo "$status" | grep -q "^??"; then
            indicators="${indicators}?" # untracked files
        fi
        if echo "$status" | grep -q "^M"; then
            indicators="${indicators}+" # modified files
        fi
        if echo "$status" | grep -q "^A"; then
            indicators="${indicators}●" # added files
        fi
        
        echo " ($branch$indicators)"
    fi
}

# Set the prompt
PS1='\[\e[32m\]\u@\h\[\e[0m\]:\[\e[34m\]\w\[\e[33m\]$(git_prompt)\[\e[0m\]\$ '
