# Path to your oh-my-zsh installation.
export ZSH=/home/raja/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="risto"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(ubuntu git capistrano ember-cli gem autojump ruby rbenv textmate rails tmux brew bundler rake nvm tmuxinator)

# User configuration

#export PATH="/home/raja/.rbenv/shims:/home/raja/.rbenv/shims:/home/raja/.rbenv/bin:/home/raja/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/local/go/bin:/home/raja/java/jdk/bin:/home/raja/java/jdk/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/local/go/bin:/home/raja/bin:/home/raja/.rvm/bin:/home/raja/java/android/android-sdk-linux/tools:/home/raja/go/bin"
# export MANPATH="/usr/local/man:$MANPATH"

#export PATH="$PATH:/home/raja/.rbenv/shims:/home/raja/.rbenv/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
#if [[ -n $SSH_CONNECTION ]]; then
  #export EDITOR='vim'
#else
  #export EDITOR='mvim'
#fi

export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#source ~/.bin/tmuxinator.zsh
export DISABLE_AUTO_TITLE=true
export TERM="screen-256color"
alias tmux="tmux -2"
alias cls="clear"
setxkbmap -option ctrl:nocaps

bindkey -v
bindkey -M viins 'jj' vi-cmd-mode
bindkey '^R' history-incremental-search-backward

#export PATH="/usr/local/heroku/bin:$PATH"
source ~/.nvm/nvm.sh
alias clang++=clang++ -std=c++11 -stdlib=libc++ -Werror -Weverything -Wno-disabled-macro-expansion -Wno-float-equal -Wno-c++98-compat -Wno-c++98-compat-pedantic -Wno-global-constructors -Wno-exit-time-destructors -Wno-missing-prototypes -Wno-padded -Wno-old-style-cast -lc++ -lc++abi
alias to-deploy='ssh deploy@192.30.139.221'

tmux_init()
{
    tmux new-session -s "raja" -d -n "local"    # 开启一个会话
    tmux new-window -n "other" "htop"          # 开启一个窗口
    tmux -2 attach-session -d           # tmux -2强制启用256color，连接已开启的tmux
}

# 判断是否已有开启的tmux会话，没有则开启
if which tmux 2>&1 >/dev/null; then
    test -z "$TMUX" && (tmux attach || tmux_init)
fi
export PATH="/home/raja/mysoft/webrtc-build-scripts/depot_tools:$PATH"


# JDK
export JAVA_HOME=/usr/lib/jvm/java-8-oracle
export JRE_HOME=${JAVA_HOME}/jre
export CLASS_PATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
export PATH=${JAVA_HOME}/bin:${JRE_HOME}/bin:$PATH

# Android SDK
export ANDROID_SDK=/home/raja/mysoft/Android/Sdk
export PATH=${ANDROID_SDK}/platform-tools:${ANDROID_SDK}/tools:$PATH

# Android NDK
export ANDROID_NDK=/home/raja/mysoft/Android/ndk
export PATH=${ANDROID_NDK}:$PATH


export PATH="$PATH:~/mysoft/eclipse/eclipse"
source ~/.nvm/nvm.sh
export STUDIO_JDK=/usr/lib/jvm/java-8-oracle
