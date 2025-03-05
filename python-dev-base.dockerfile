FROM 3.14-rc-alpine

RUN apk add --no-cache \
  git curl make fzf ripgrep fd bat yazi neovim zsh openssh

RUN pip install poetry && poetry config virtualenvs.in-project true
