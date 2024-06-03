{ config, pkgs, lib, ... }: {
    programs.zsh  =  {
        enable  =  true;
        enableAutosuggestions  =  true;
        enableCompletion  =  true;
        syntaxHighlighting.enable  =  true;
        dotDir  =  ".config/zsh";

        sessionVariables  =  {
            EDITOR  =  "nvim";
            VISUAL  =  "nvim";
            KUBECONFIG = "$HOME/.kube/talos-dev.yaml";
        };

        initExtraBeforeCompInit = ''
            export PATH="$HOME/.local/bin/:$PATH"
            eval "$(starship init zsh)"
            eval "$(thefuck --alias)"
            zstyle :omz:plugins:ssh-agent agent-forwarding yes
            source <(jumper completion zsh)
        '';

        oh-my-zsh  =  {
            enable  =  true;
            theme  =  "agnoster";
            plugins  =  [
                "git"
                "docker"
                "kubectl"
                "ssh-agent"
            ];
        };

        shellAliases  =  {
            ls = "ls --color=auto -F";
            ll = "ls -l";
            la = "ls -A";
            l = "ls -CF";
            grep = "grep --color=auto";
            egrep = "egrep --color=auto";
            fgrep = "fgrep --color=auto";
            kwhoami = "kubectl config current-context";
            kex = "kubectl exec -it";
            cexit = "code . && exit";
            drmi = "docker rmi $(docker images -q)";
        };

        plugins  =  [
            {
                # will source zsh-autosuggestions.plugin.zsh
                name = "zsh-autosuggestions";
                file = "zsh-autosuggestions.zsh";
                src = pkgs.fetchFromGitHub {
                    owner = "zsh-users";
                    repo = "zsh-autosuggestions";
                    rev = "v0.7.0";
                    sha256 = "sha256-KLUYpUu4DHRumQZ3w59m9aTW6TBKMCXl2UcKi4uMd7w";
                };
            }
            {
                # will source zsh-autosuggestions.plugin.zsh
                name = "zsh-syntax-highlighting";
                file = "zsh-syntax-highlighting.zsh";
                src = pkgs.fetchFromGitHub {
                    owner = "zsh-users";
                    repo = "zsh-syntax-highlighting";
                    rev = "v0.7.0";
                    sha256 = "sha256-KLUYpUu4DHRumQZ3w59m9aTW6TBKMCXl2UcKi4uMd7w";
                };
            }
        ];
    };
}