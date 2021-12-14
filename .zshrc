
# history共有
HISTFILE=~/.zsh_history
HISTSIZE=6000000
SAVEHIST=6000000


# git-promptの読み込み
source ~/.zsh/git-prompt.sh

# git-completionの読み込み
fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
autoload -Uz compinit && compinit

# プロンプトのオプション表示設定
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

# プロンプトの表示設定(好きなようにカスタマイズ可)
setopt PROMPT_SUBST ; PS1='%F{green}%n%f@%F{cyan}%C%f%F{red}$(__git_ps1)%f:'



### env
#source ~/.git-completion.zsh	# completion but failed
eval "$(rbenv init -)"		# ruby

### asdf
. /usr/local/opt/asdf/asdf.sh

### PATH
#export PATH="$PATH:/Users/iwahashi/Documents/dependency/flutter/bin"
#export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH="$PATH:/Users/iwahashi/Documents/dependency/"
export PATH="$PATH:/Users/iwahashi/Documents/dependency/monarch/bin"
### release
alias dartfmtall='find . -type f \( ! -name "*.freezed.dart" -and ! -name "*.g.dart" \) -and -name "*.dart" | xargs $HOME/Documents/dependency/flutter/bin/cache/dart-sdk/bin/dartfmt --fix -w -l 200'


### access
alias ~="cd ~"
alias ..="cd .."
alias doc="cd ~/Documents/"
alias ad="cd ~/Documents/toridori/appront_media_app && @p@"
alias base="cd ~/Documents/toridori/collabo_base_app && @p@"
alias abbb="cd ~/Documents/toridori/collabo-base-app-api-v2 && @p@"
alias mark="cd ~/Documents/toridori/collabo_marketing_app && @p@"
alias wer="cd ~/Documents/toridori/toridori-marketing-web && @p@"
alias ammm="cd ~/Documents/toridori/collabo-marketing-api && @p@"
alias dis="cd ~/Documents/disposable/disposable"

### utility
alias via="vim ~/.zshrc"
alias sos="source ~/.zshrc"
alias rec="xcrun simctl io booted recordVideo rec.mov"
alias clean="flutter clean && flutter pub get && refreeze"

### ruby
alias rr="rbenv"
alias r="ruby"

### git
alias @p@="gitup"
alias bb="git branch"
alias gg="git status -sb"
alias ww="git switch"
alias bbb="git branch $1 && git switch $1"
alias vv="(){git branch \$1 && git switch \$1}"
alias ll="git log --all --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias dev="git switch dev && git branch"
alias ddd="git switch dev && git pull origin dev"
alias bisect="git bisect"
alias tt="git worktree add"
alias ttr="git worktree remove"
alias pr="(){ git fetch origin pull/\$1/head:pr && git switch pr && git branch }"
alias soft="git reset --soft HEAD^"
alias sub="git submodule add"


### flutter
alias refreeze="flutter pub run build_runner build --delete-conflicting-outputs"
alias rere="flutter pub run build_runner watch --delete-conflicting-outputs"
cccc() {
  flutter clean
  flutter pub get
  refreeze
}
alias -g @ppp="--dart-define=FLAVOR=Profile -t lib/main_staging.dart"
alias new="(){python3 ~/Documents/dependency/new.py \$@}"

### docker 
alias rbuild="docker build -t $(basename $(pwd)) ."
alias rrun="docker run --rm -p 4000:80 $(basename $(pwd))"
alias redis="docker run -it --rm -p 6379:6379 redis"
alias awsc="docker run --rm -it amazon/aws-cli"

export PATH=$HOME/.nodebrew/current/bin:$PATH

