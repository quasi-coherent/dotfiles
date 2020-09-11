export SHELL=/usr/local/bin/zsh
export CURR_DATE=`date +'%Y-%m-%d'`
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_192.jdk/Contents/Home"
export ZSH="$HOME/.oh-my-zsh"

typeset -U path

# Inherit PATH from nix when running inside nix shell
if [ -z "$IN_NIX_SHELL" ] ; then
  path=(
    ~/bin
    ~/.local/bin
    ~/.cabal/bin
    ~/.npm/node_modules/bin
    /usr/local/opt/scala@2.11/bin
    /usr/local/sbin
    /usr/local/bin
    /usr/sbin
    /sbin
    /usr/bin
    /bin

    $path[@]
  )
else
  path=($(echo "$PATH" | sed -e 's/:/\n/g'))
fi

# export PATH="/bin:/sbin:/usr/local/opt/python@3.8/libexec/bin:/usr/local/bin:/usr/bin:/usr/sbin:/usr/local/sbin:/usr/local/opt/scala@2.11/bin:$HOME/.local/bin:$HOME/bin:$HOME/.cabal/bin"

# Source Nix user profile
if [ -e $HOME/.nix-profile/etc/profile.d/nix.sh ]; then . $HOME/.nix-profile/etc/profile.d/nix.sh; fi
