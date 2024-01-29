import { themes as prismThemes } from 'prism-react-renderer';
import type { Config } from '@docusaurus/types';
import type * as Preset from '@docusaurus/preset-classic';
import { fileURLToPath } from 'url';
import logger from '@docusaurus/logger'

logger.info(`cwd: ${fileURLToPath(import.meta.url)}`)
const isPreview = import.meta.url.match('preview');
const envBaseUrl = process.env['DOCUSAURUS_BASEURL']
if (envBaseUrl) {
  logger.info(`DOCUSAURUS_BASEURL=${envBaseUrl}`)
}

const config: Config = {
  title: 'Cronica IT&C',
  tagline: 'O încercare de reconstituire și prezervare pe termen lung a istoriei IT&C' + (isPreview ? ' (preview)' : ''),
  favicon: 'img/favicon.ico',

  // Set the production url of your site here;
  // The preview url should not include the baseUrl part.
  url: isPreview ? 'https://cronica-it.github.io/' : 'https://cronica-it.github.io/',
  // Set the /<baseUrl>/ pathname under which your site is served
  // For GitHub pages deployment, it is often '/<projectName>/'
  baseUrl: envBaseUrl || isPreview ? '/preview/' : '/',

  // GitHub pages deployment config.
  // If you aren't using GitHub pages, you don't need these.
  organizationName: 'cronica-it', // Usually your GitHub org/user name.
  projectName: isPreview ? 'preview' : 'cronica-it.github.io', // Usually your repo name.

  onBrokenLinks: 'throw',
  onBrokenMarkdownLinks: 'throw',

  // Even if you don't use internationalization, you can use this field to set
  // useful metadata like html lang. For example, if your site is Chinese, you
  // may want to replace "en" with "zh-Hans".
  i18n: {
    defaultLocale: 'ro',
    locales: ['ro'],
  },

  plugins: [
    [
      '@docusaurus/plugin-content-docs',
      {
        sidebarPath: './sidebars.ts',
        // Please change this to your repo.
        // Remove this to remove the "edit this page" links.
        editUrl:
          isPreview ? 'https://github.com/cronica-it/cronica-it.github.io/edit/preview/website/' : 'https://github.com/cronica-it/cronica-it.github.io/edit/master/website/',
        showLastUpdateTime: true,
      },
    ],
    [
      // https://docusaurus.io/docs/api/plugins/@docusaurus/plugin-content-blog
      '@docusaurus/plugin-content-blog',
      {
        /**
         * Required for any multi-instance plugin
         */
        id: 'memories-blog',
        /**
         * Path to data on filesystem relative to site dir.
         */
        path: './amintiri',
        /**
         * URL route for the blog section of your site.
         * *DO NOT* include a trailing slash.
         */
        routeBasePath: 'amintiri',
        archiveBasePath: 'arhiva',
        tagsBasePath: 'categorii',
        authorsBasePath: 'autori',
        pageBasePath: 'pagina',
        showReadingTime: true,
        showLastUpdateTime: true,
        hidePostYearInArchive: true,
        sortPostsByEventDate: true,
        generateAuthorsPages: true,

        // Please change this to your repo.
        // Remove this to remove the "edit this page" links.
        editUrl:
          isPreview ? 'https://github.com/cronica-it/cronica-it.github.io/edit/preview/website/' : 'https://github.com/cronica-it/cronica-it.github.io/edit/master/website/',
        blogSidebarTitle: 'Amintiri',
        blogSidebarCount: 'ALL',
        authorsMapPath: '../authors.yml',
      },
    ],
    [
      // https://docusaurus.io/docs/api/plugins/@docusaurus/plugin-content-blog
      '@docusaurus/plugin-content-blog',
      {
        /**
         * Required for any multi-instance plugin
         */
        id: 'events-blog',
        /**
         * Path to data on filesystem relative to site dir.
         */
        path: './evenimente',
        /**
         * URL route for the blog section of your site.
         * *DO NOT* include a trailing slash.
         */
        routeBasePath: 'evenimente',
        archiveBasePath: 'arhiva',
        tagsBasePath: 'categorii',
        authorsBasePath: 'autori',
        pageBasePath: 'pagina',

        authorsMapPath: '../authors.yml',
        exclude: ['**/README.md'],
        showReadingTime: true,
        showLastUpdateTime: true,
        hidePostYearInArchive: true,
        sortPostsByEventDate: true,
        generateAuthorsPages: true,

        // Please change this to your repo.
        // Remove this to remove the "edit this page" links.
        editUrl:
          isPreview ? 'https://github.com/cronica-it/cronica-it.github.io/edit/preview/website/' : 'https://github.com/cronica-it/cronica-it.github.io/edit/master/website/',
        blogSidebarTitle: 'Evenimente',
        blogSidebarCount: 'ALL',
      },
    ],
    [
      // https://docusaurus.io/docs/api/plugins/@docusaurus/plugin-content-blog
      '@docusaurus/plugin-content-blog',
      {
        /**
         * Required for any multi-instance plugin
         */
        id: 'blog',
        /**
         * Path to data on filesystem relative to site dir.
         */
        path: './blog',
        /**
         * URL route for the blog section of your site.
         * *DO NOT* include a trailing slash.
         */
        routeBasePath: 'blog',
        archiveBasePath: 'arhiva',
        tagsBasePath: 'categorii',
        authorsBasePath: 'autori',
        pageBasePath: 'pagina',
        showReadingTime: true,
        showLastUpdateTime: true,
        hidePostYearInArchive: true,
        // sortPostsByEventDate: true,
        // generateAuthorsPages: true,

        // Please change this to your repo.
        // Remove this to remove the "edit this page" links.
        editUrl:
          isPreview ? 'https://github.com/cronica-it/cronica-it.github.io/edit/preview/website/' : 'https://github.com/cronica-it/cronica-it.github.io/edit/master/website/',
        blogSidebarTitle: 'Amintiri',
        blogSidebarCount: 'ALL',
        authorsMapPath: '../authors.yml',
      },
    ],
    [
      '@docusaurus/plugin-content-pages',
      {}
    ],
    [
      // https://docusaurus.io/docs/next/api/plugins/@docusaurus/plugin-client-redirects#redirects
      '@docusaurus/plugin-client-redirects',
      {
        // fromExtensions: ['html', 'htm'], // /myPage.html -> /myPage
        // toExtensions: ['exe', 'zip'], // /myAsset -> /myAsset.zip (if latter exists)
        // redirects: [
        //   // /docs/oldDoc -> /docs/newDoc
        //   {
        //     to: '/docs/newDoc',
        //     from: '/docs/oldDoc',
        //   },
        //   // Redirect from multiple old paths to the new path
        //   {
        //     to: '/docs/newDoc2',
        //     from: ['/docs/oldDocFrom2019', '/docs/legacyDocFrom2016'],
        //   },
        // ],
        // createRedirects(existingPath) {
        //   // logger.info(existingPath);
        //   if (existingPath.includes('/evenimente')) {
        //     // logger.info(`to ${existingPath} from ${existingPath.replace('/evenimente', '/events')}`);
        //     // Redirect from /events/X to /evenimente/X
        //     return [
        //       existingPath.replace('/evenimente', '/events')
        //     ];
        //   } else if (existingPath.includes('/amintiri')) {
        //     // logger.info(`to ${existingPath} from ${existingPath.replace('/amintiri', '/blog')}`);
        //     // Redirect from /blog/Z to /amintiri/X
        //     return [
        //       existingPath.replace('/amintiri', '/blog')
        //     ];
        //   }
        //   return undefined; // Return a falsy value: no redirect created
        // },
      },
    ],
    [
      // https://docusaurus.io/docs/api/plugins/@docusaurus/plugin-google-gtag
      // https://tagassistant.google.com
      '@docusaurus/plugin-google-gtag',
      {
        trackingID: 'G-T50NMR8JZ1',
        anonymizeIP: false,
      }
    ],
    [
      // https://docusaurus.io/docs/api/plugins/@docusaurus/plugin-sitemap
      // https://cronica-it.github.io/sitemap.xml
      '@docusaurus/plugin-sitemap',
      {
        changefreq: 'weekly',
        priority: 0.5,
        // ignorePatterns: ['/tags/**'],
        filename: 'sitemap.xml',
      }
    ],
  ],

  themes: [
    [
      '@docusaurus/theme-classic',
      {
        customCss: './src/css/custom.css',
      }
    ]
  ],

  themeConfig: {
    // Replace with your project's social card
    // image: 'img/docusaurus-social-card.jpg',
    navbar: {
      title: 'Cronica IT&C',
      logo: {
        alt: 'Felix_C-256',
        src: 'img/logo-felix-c-256-computer.jpg',
      },
      items: [
        // {to: '/evenimente', label: 'Evenimente', position: 'left'},
        {
          type: 'dropdown',
          label: 'Evenimente',
          to: '/evenimente/arhiva',
          position: 'left',
          items: [
            {
              label: 'Arhiva pe ani',
              to: '/evenimente/arhiva'
            },
            {
              label: 'Categorii',
              to: '/evenimente/categorii'
            },
            {
              label: 'Autori',
              to: '/evenimente/autori'
            },
            {
              label: 'Toate',
              to: '/evenimente'
            }
          ]
        },
        // {to: '/blog', label: 'Blog', position: 'left'},
        {
          type: 'dropdown',
          label: 'Amintiri',
          to: '/amintiri/arhiva',
          position: 'left',
          items: [
            {
              label: 'Arhiva pe ani',
              to: '/amintiri/arhiva'
            },
            {
              label: 'Categorii',
              to: '/amintiri/categorii'
            },
            {
              label: 'Autori',
              to: '/amintiri/autori'
            },
            {
              label: 'Toate',
              to: '/amintiri'
            },
          ]
        },
        {
          type: 'dropdown',
          label: 'Blog',
          to: '/blog',
          position: 'left',
          items: [
            {
              label: 'Arhiva pe ani',
              to: '/blog/arhiva'
            },
            {
              label: 'Toate',
              to: '/blog'
            },
          ]
        },
        {
          label: 'Arhiva',
          to: '/arhiva',
          position: 'left'
        },
        {
          label: 'Despre',
          to: '/despre',
          position: 'right'
        },
        {
          label: 'Docu',
          type: 'docSidebar',
          sidebarId: 'docuSidebar',
          position: 'right',
        },
        {
          href: 'https://github.com/cronica-it',
          position: 'right',
          className: 'header-github-org-link',
          'aria-label': 'GitHub repository',
        },
        {
          href: isPreview ? 'https://github.com/cronica-it/cronica-it.github.io/tree/preview' : 'https://github.com/cronica-it/cronica-it.github.io',
          position: 'right',
          className: 'header-github-link',
          'aria-label': 'GitHub repository',
        },
      ],
    },
    footer: {
      style: 'dark',
      links: [
      ],
      copyright: `Copyright © 2023-${new Date().getFullYear()} Cronica IT&C. Built with Docusaurus.`,
    },
    prism: {
      theme: prismThemes.github,
      darkTheme: prismThemes.dracula,
    },
    algolia: {
      // https://docsearch.algolia.com/docs/docsearch-v3/
      appId: '8S0ZIY7HUC',
      apiKey: 'ec89b504f4388cd0508bf28ff8878217',
      indexName: 'cronica-itio',

      // It ensures that search results are relevant to the current
      // language and version. Enabled by default.
      contextualSearch: true,
      // Optional: Replace parts of the item URLs from Algolia.
      // Useful when using the same search index for multiple deployments
      // using a different baseUrl. You can use regexp or string in the
      // `from` param. For example: localhost:3000 vs myCompany.com/docs
      replaceSearchResultPathname: undefined,
      // Optional: Algolia search parameters
      searchParameters: {},
      // Optional: path for search page that enabled by default (`false` to disable it)
      // searchPagePath: 'search',
    }
  } satisfies Preset.ThemeConfig,
};

export default config;
