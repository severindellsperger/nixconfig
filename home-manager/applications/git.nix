{ config, lib, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userEmail = "severin.dellsperger@gmail.com";
    userName = "severindellsperger";
    ignores = [
      ".idea" ".vscode" ".vsc" ".vs" # IDEs
      ".DS_Store" # macOS
      "*.pyc" "*.pyo" "__pycache__" # Python
      "node_modules" "npm-debug.log" # Node
      "dist" "build" # Build
      "coverage" # Coverage
      ".ipynb_checkpoints" # Jupyter
    ];
    extraConfig = {
      init = { defaultBranch = "main"; };
    };
  };
}
