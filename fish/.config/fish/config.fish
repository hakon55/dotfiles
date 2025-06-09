set -g fish_greeting
set TERM xterm-256color

# fish_add_path /home/hakon/.local/bin
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/opt/node@22/bin
fish_add_path /Users/hakon.stordal/bin
fish_add_path "/Users/hakon.stordal/Library/Application Support/JetBrains/Toolbox/scripts"

abbr dc docker compose

abbr zed flatpak run dev.zed.Zed

abbr g git
abbr ga git add 
abbr gs git status
abbr gp git push
abbr gl git pull
abbr gf git fetch
abbr gc git commit
abbr gco git checkout

set -g fish_key_bindings fish_hybrid_key_bindings

bind -M insert ctrl-n down-or-search

set NVM_DIR ~/.nvm
#set USER m01345

if status is-interactive
    # Commands to run in interactive sessions can go here
end
