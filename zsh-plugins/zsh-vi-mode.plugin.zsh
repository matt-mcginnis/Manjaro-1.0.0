# According to the standard:
# https://zdharma-continuum.github.io/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html
0="${ZERO:-${${0:#$ZSH_ARGZERO}:-${(%):-%N}}}"
0="${${(M)0:#/*}:-$PWD/$0}"

function zvm_after_lazy_keybindings() {
    zvm_bindkey vicmd 'h' up-line-or-history
    zvm_bindkey vicmd 'k' down-line-or-history
    zvm_bindkey vicmd 'j' vi-backward-char
    zvm_bindkey vicmd 'l' vi-forward-char
}

source ${0:h}/zsh-vi-mode.zsh
