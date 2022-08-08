if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting ""
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always
set -gx TERM xterm-256color

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH
set -gx PATH /usr/local/bin $PATH
set -gx PATH /opt/homebrew/bin $PATH
set -gx EDITOR nvim

# aliases
if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end
alias ls "ls -p -G"
#alias la "ls -A"
#alias ll "ls -l"
#alias lla "ll -A"
alias g git
alias nv nvim
command -qv nvim && alias vim nv

source /opt/homebrew/opt/asdf/libexec/asdf.fish
