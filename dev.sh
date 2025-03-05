docker run -it --rm \
  -v ${HOME}/.config/nvim:/root/.config/nvim \
  -v ${HOME}/.ssh/work:/root/.ssh \
  dev-base:go \
  zsh -c "cd /workspace && zsh"
