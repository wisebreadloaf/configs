if status is-interactive
    # Commands to run in interactive sessions can go here
end
set fish_greeting
starship init fish | source
alias cls="clear"
alias c="clear"
alias tmux="tmux -u"
alias t="tmux"
alias cpy="xclip -sel c <"
alias d="docker"
alias clip="cd ~/arsenal/clip-retriever/"
alias sam="cd ~/segment-anything/"
alias x="exit"
alias img="~/Downloads/image-search-resnet/python"
set -g theme_font "Fira Code Nerd Font Mono Regular 12"

conda initialize
if test -f /home/bored/miniconda3/bin/conda
  eval /home/bored/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
  if test -f "/home/bored/miniconda3/etc/fish/conf.d/conda.fish"
      . "/home/bored/miniconda3/etc/fish/conf.d/conda.fish"
  else
      set -x PATH "/home/bored/miniconda3/bin" $PATH
  end
end

set -x VK_ICD_FILENAMES /usr/share/vulkan/icd.d/
