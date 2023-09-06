if status is-interactive
    starship init fish | source
    # Commands to run in interactive sessions can go here
end
fish_vi_key_bindings
alias vim "nvim"
alias d "docker"
alias v "nvim"

alias edit-fish "v ~/.config/fish/config.fish"
alias edit-tmux "v ~/.tmux.conf"
alias edit-alac "v ~/.config/alacritty/alacritty.yml"
alias fishrefresh "  source ~/.config/fish/config.fish"

function polling_command
  while true;
    set -l result (eval $argv[1])
    printf "====== POLLING COMMAND ======\n"
    printf $result\n
    sleep $argv[2]
  end
end

# pnpm
set -gx PNPM_HOME "/Users/kai/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end


# k8s
alias k "kubectl"
alias kc "kubectx"
alias kn "kubens"
alias kgp "kubectl get pods"
alias kgd "kubectl get deployments"
alias kgsv "kubectl get services"
alias kgst "kubectl get statefulset"

# tmux
alias tm "tmux"
alias tmn "tm new-session -t"
alias tmka "tm kill-server"
alias tmk "tm kill-session -t"
alias tml "tm ls"

# git
alias gpush "git push"
alias gcheckout "git checkout"
alias gcommit "git commit"
alias gpull "git pull"
