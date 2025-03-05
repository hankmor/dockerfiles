# Dockerfile.dev-base
FROM golang:1.24.1-alpine

# 安装基础工具链
RUN apk add --no-cache \
    git curl make fzf ripgrep fd bat \
    neovim zsh gcc musl-dev libc-dev openssh # 按需选择 Shell

# 配置 Neovim 基础环境（后续通过 Volume 挂载完整配置）
RUN mkdir -p /root/.config/nvim
RUN mkdir -p /workspace

# 安装 LSP 和语法高亮
RUN go install golang.org/x/tools/gopls@latest # lsp\
  && go install github.com/go-delve/delve/cmd/dlv@latest  # 调试工具\
  && go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest  # 代码检查
