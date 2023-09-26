if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -U fish_greeting "🐟"
set -gx EDITOR nvim

# pnpm
set -gx PNPM_HOME "/home/dev_islom/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

zoxide init fish | source
starship init fish | source
alias pnpx="pnpm dlx"
alias vim="nvim"


# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# exa
alias ls "exa --color=always --icons --group-directories-first"
alias la 'exa --color=always --icons --group-directories-first --all'
alias ll 'exa --color=always --icons --group-directories-first --all --long'
alias lt 'exa --tree --color=always --icons --group-directories-first --all'

