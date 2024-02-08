source ~/.path_config.sh
source ~/.alias.sh

export MOZ_USE_XINPUT2=1
export EDITOR=nvim


## manjaro config
USE_POWERLINE="true"
HAS_WIDECHARS="false"
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi
