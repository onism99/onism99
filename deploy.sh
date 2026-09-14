#!/bin/bash

# VuePress 部署脚本
# 此脚本自动创建 GitHub Actions 配置并部署

echo "🚀 开始部署 VuePress 项目..."

# 创建 .github/workflows 目录
mkdir -p .github/workflows

# 创建部署配置文件
cat > .github/workflows/deploy.yml << 'EOF'
name: Deploy to GitHub Pages

on:
  push:
    branches:
      - vuepress-setup

jobs:
  deploy:
    runs-on: ubuntu-latest
    
    steps:
      - name: Checkout
        uses: actions/checkout@v3
        with:
          fetch-depth: 0

      - name: Setup Node.js
        uses: actions/setup-node@v3
        with:
          node-version: '18'
          cache: 'npm'

      - name: Install dependencies
        run: npm ci

      - name: Build
        run: npm run build

      - name: Deploy
        uses: peaceiris/actions-gh-pages@v3
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
          publish_dir: ./docs/.vuepress/dist
EOF

echo "✅ 创建部署配置文件成功"

# 提交并推送
git add .github/workflows/deploy.yml
git commit -m "Add GitHub Actions deployment workflow"
git push origin vuepress-setup

echo "✅ 已推送到 GitHub"
echo "🎉 部署配置完成！"
echo "📝 现在请进行以下操作："
echo "   1. 访问 https://github.com/onism99/onism99/settings/pages"
echo "   2. 在 GitHub Pages 设置中选择 'gh-pages' 分支"
echo "   3. 等待部署完成后访问 https://onism99.github.io"
