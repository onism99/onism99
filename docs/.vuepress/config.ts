import { defineUserConfig, defaultTheme } from 'vuepress'

export default defineUserConfig({
  lang: 'zh-CN',
  title: 'onism99 的知识库',
  description: '分享技术笔记、学习心得和项目经验',
  
  theme: defaultTheme({
    logo: '/images/logo.png',
    navbar: [
      {
        text: '首页',
        link: '/',
      },
      {
        text: '笔记',
        link: '/notes/',
      },
      {
        text: '项目',
        link: '/projects/',
      },
      {
        text: '关于',
        link: '/about/',
      },
      {
        text: 'GitHub',
        link: 'https://github.com/onism99',
      },
    ],
    sidebar: {
      '/notes/': [
        {
          text: '笔记分类',
          children: [
            '/notes/README.md',
            '/notes/python.md',
            '/notes/web.md',
          ],
        },
      ],
      '/projects/': [
        {
          text: '我的项目',
          children: [
            '/projects/README.md',
          ],
        },
      ],
    },
    darkMode: true,
    repo: 'https://github.com/onism99',
    repoLabel: 'GitHub',
    editLink: false,
  }),

  head: [
    ['link', { rel: 'icon', href: '/images/favicon.ico' }],
  ],
})
