# export PATH=$HOME/bin:/usr/local/bin:$PATH
export TERM="xterm-256color"
export ZSH="/Users/zxh/.oh-my-zsh"
ZSH_THEME="powerlevel9k/powerlevel9k"
plugins=(gitignore cp wd z rand-quote command-not-found safe-paste colored-man-pages autojump git zsh-autosuggestions extract zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/lib/ruby/gems/2.6.0/bin:$PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"
alias vi=vim
alias vim=mvim
alias mvim='/usr/local/bin/mvim -v'

function gituser_main(){
    git config --global user.name "han0nly"
    git config --global user.email "zhangxh@stu.xidian.edu.cn"
    ssh-add -d /Users/zxh/.ssh/id_rsa_side
    ssh-add /Users/zxh/.ssh/id_rsa
}

function gituser_small(){
    git config --global user.name "sgx-interface-side-channel"
    git config --global user.email "sgx.interface.sidechannel@gmail.com"
    ssh-add -d /Users/zxh/.ssh/id_rsa
    ssh-add /Users/zxh/.ssh/id_rsa_side
}

function proxy_off(){
    unset http_proxy
    unset https_proxy
    echo -e "已关闭代理"
}

function proxy_on() {
    export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"
    export http_proxy="http://127.0.0.1:7890"
    export https_proxy=$http_proxy
    echo -e "已开启代理"
}
export DYLD_LIBRARY_PATH=/usr/local/opt/openssl/lib:$DYLD_LIBRARY_PATH
export PATH="$HOME/.cargo/bin:/usr/local/sbin:$PATH:/Users/zxh/myproject/IIoT_Paper/fabric-samples/bin"
export GOPATH="/Users/zxh/myproject/IIoT_Paper/chaincodetest"
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export ANDROID_SDK_HOME="/Users/zxh/Library/Android/sdk/platforms/android-28/"

fpath=(/opt/vagrant/embedded/gems/2.2.10/gems/vagrant-2.2.10/contrib/zsh $fpath)
compinit

export HOMEBREW_NO_AUTO_UPDATE=true

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/zxh/myproject/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/zxh/myproject/google-cloud-sdk/path.zsh.inc'; fi
export ANDROID_HOME="/Users/zxh/workspace/android-sdk/"
export JAVA7_HOME="/Users/zxh/.sdkman/candidates/java/7.0.292-zulu/"
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
if [ -f '/Users/zxh/myproject/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/zxh/myproject/google-cloud-sdk/completion.zsh.inc'; fi
#export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles/bottles
export PATH="$ANDROID_HOME/cmdline-tools/latest/bin:$PATH"
export PATH="/usr/local/opt/mongodb-community@4.2/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/3.0.0/bin:$PATH"
#export PATH="/Users/zxh/.local/share/gem/ruby/3.0.0/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.gem/ruby/3.3.0/bin:/Users/zxh/Library/Android/sdk/platform-tools:/Users/zxh/workspace/android_analysis/jeb-demo-4.2.0.202106271614:$PATH"
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/zxh/.sdkman"
[[ -s "/Users/zxh/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/zxh/.sdkman/bin/sdkman-init.sh"
