# ------------------------------------------------------------------------------
# Description
# -----------
#
# doas or will be inserted before the command
#
# ------------------------------------------------------------------------------
# Authors
# -------
#
# * Dongweiming <ciici123@gmail.com>
# * Subhaditya Nath <github.com/subnut>
# * Marc Cornellà <github.com/mcornella>
# * Fyodor Doletov <github.com/Senderman> (doas fork)
# ------------------------------------------------------------------------------

__doas-replace-buffer() {
  local old=$1 new=$2 space=${2:+ }
  if [[ ${#LBUFFER} -le ${#old} ]]; then
    RBUFFER="${space}${BUFFER#$old }"
    LBUFFER="${new}"
  else
    LBUFFER="${new}${space}${LBUFFER#$old }"
  fi
}

doas-command-line() {
  __doas-replace-buffer "doas" ""
  
  # Preserve beginning space
  LBUFFER="${WHITESPACE}${LBUFFER}"

  # Redisplay edit buffer (compatibility with zsh-syntax-highlighting)
  zle redisplay
}

zle -N doas-command-line

# Defined shortcut keys: [Esc] [Esc]
bindkey -M emacs '\e\e' doas-command-line
bindkey -M vicmd '\e\e' doas-command-line
bindkey -M viins '\e\e' doas-command-line
