set -g fish_greeting

# fish_add_path /home/hakon/.local/bin

abbr dc docker compose

abbr g git
abbr ga git add 
abbr gs git status
abbr gp git push
abbr gl git pull
abbr gc git commit

set -x EDITOR hx
set -g fish_key_bindings fish_hybrid_key_bindings


if status is-interactive
    # Commands to run in interactive sessions can go here
end
