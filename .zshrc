# Path to your oh-my-zsh installation.
export ZSH=/opt/localuser/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
plugins=(git)

# User configuration
export EDITOR='vim'
export PATH="/disk0/Xilinx/Vivado/2016.1/bin:/disk0/Xilinx/Vivado_HLS/2016.1/bin:$PATH"
export PATH="/usr/local/cuda/bin:$PATH"
export PATH="/disk0/Work/xillybus_linux_driver/demoapps:$PATH"
export PATH="/disk0/anaconda2/bin:$PATH" 

export CPLUS_INCLUDE_PATH=/usr/local/hdf5/include
export LIBRARY_PATH=/usr/local/hdf5/lib
export LD_LIBRARY_PATH="/disk0/anaconda2/lib"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/hdf5/lib"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda/lib64:/usr/local/cuda/extras/CUPTI/lib64"
export CUDA_HOME=/usr/local/cuda

alias vim="PATH=/usr/bin:$PATH;/usr/bin/vi" 
# vim.gnome-py2"
# export LD_LIBRARY_PATH=/opt/Xilinx/Vivado/2016.1/lib/lnx64.o:$LD_LIBRARY_PATH
# export LC_TIME=en_US.UTF-8
# export LC_MONETARY=en_US.UTF-8
# export LC_PAPER=en_US.UTF-8
# export LC_NAME=en_US.UTF-8
# export LC_ADDRESS=en_US.UTF-8
# export LC_TELEPHONE=en_US.UTF-8
# export LC_MEASUREMENT=en_US.UTF-8
# export LC_IDENTIFICATION=en_US.UTF-8
# export LC_NUMERIC=en_US.UTF-8
# source /opt/Xilinx/Vivado/2016.1/settings64.sh
# export SWT_GTK3=0

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"
# export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=gasp -Dswing.aatext=True -Dsun.java2d.xrender=true'

# export FT2_SUBPIXEL_HINTING=1  # INFINALITY MODE

# For Jupyter profile_default
export IPYTHONDIR="/disk0/.ipython"

# python package: shogun (machine learning cpp interface)
# export SHOGUN_INSTALL_DIR="/usr/local"
# export LD_LIBRARY_PATH="$SHOGUN_INSTALL_DIR/lib"
# export PYTHONPATH="$SHOGUN_INSTALL_DIR/lib/python2.7/site-packages/"

# python package: sharedmem (multicore computation) 
# export OMP_NUM_THREADS=16

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

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
alias open-ephys="/disk0/chongxi/BinaryWriter/plugin-GUI/Builds/Linux/build/open-ephys"
# alias su="sudo -E env "PATH=$PATH""
# alias cp="rsync --info=progress2"
alias open="xdg-open"
alias vivado_license="source ~/.eth0.sh"
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"/
