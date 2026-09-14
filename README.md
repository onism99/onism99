# onism99 的个人知识库

一个用 VuePress 2 构建的个人知识库和笔记本，分享技术笔记、学习心得和项目经验。

## 🚀 快速开始

### 安装依赖

```bash
npm install
```

### 开发模式

```bash
npm run dev
```

访问 `http://localhost:8080` 查看网站。

### 构建生产版本

```bash
npm run build
```

输出文件在 `docs/.vuepress/dist` 目录。

## 📝 项目结构

```
├── docs/
│   ├── .vuepress/
│   │   └── config.ts          # VuePress 配置
│   ├── README.md              # 首页
│   ├── notes/                 # 笔记
│   ├── projects/              # 项目
│   └── about/                 # 关于
├── package.json
└── README.md
```

## 🎨 主题选择

这个项目使用 VuePress 默认主题。你可以随时更换其他主题：

- [vuepress-theme-hope](https://theme-hope.vuejs.press/zh/) - 功能丰富
- [vuepress-theme-reco](https://reco.nicelinks.site/) - 简洁美观
- 或自定义主题

## 📚 如何添加笔记

1. 在 `docs/notes/` 目录下创建新的 `.md` 文件
2. 编辑 `docs/.vuepress/config.ts` 中的 sidebar 配置
3. 保存后自动重新加载

## 🔧 部署到 GitHub Pages

详见 [部署指南](./DEPLOY.md)（待添加）

## 📄 许可证

MIT License

## 👨‍💻 作者

onism99
