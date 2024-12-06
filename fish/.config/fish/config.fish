set -g fish_greeting

# fish_add_path /home/hakon/.local/bin
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/opt/node@20/bin
fish_add_path /Users/m01345/scripts

abbr dc docker compose

abbr g git
abbr ga git add 
abbr gs git status
abbr gp git push
abbr gl git pull
abbr gf git fetch
abbr gc git commit
abbr gco git checkout

set -g fish_key_bindings fish_hybrid_key_bindings


if status is-interactive
    # Commands to run in interactive sessions can go here
end
