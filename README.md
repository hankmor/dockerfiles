# go docker开发环境

## 构建 go 开发环境

```bash
docker build -t dev-base:go -f go-dev-bae.dockerfile .
```

如果镜像垃取太慢，手动垃取：

```bash
docker pull golang:1.24.1-alpine
```

## 通过 volume 挂载本地 neovim 配置

```bash
# 启动容器示例命令
docker run -it --rm \
  -v ${HOME}/workspace/.ws/:/workspace/ \          # 挂载项目代码
  -v ~/.config/nvim:/root/.config/nvim \ # 挂载 Neovim 配置
  -v ~/.ssh/work:/root/.ssh \          # 挂载 SSH 密钥（可选）
  dev-base:go \
  zsh -c "cd /workspace && zsh" # 进入项目根目录
```
