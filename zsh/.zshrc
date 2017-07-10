# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
export PATH=~/.cargo/bin:/usr/local/sbin:$PATH
export RUST_SRC_PATH=~/Developer/src/rustc/current/src

# Set name of the theme to load.
ZSH_THEME="ys"

# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Add wisely, as too many plugins slow down shell startup.
plugins=(brew colored-man-pages colorize common-aliases cp docker git osx vagrant)

source $ZSH/oh-my-zsh.sh
