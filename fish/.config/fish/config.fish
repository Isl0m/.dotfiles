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

