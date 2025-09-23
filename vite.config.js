import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';
import tailwindcss from '@tailwindcss/vite';
import { globSync } from 'glob';

export default defineConfig({
    build: {
        outDir:"public_html/build",
        //     /*  assetsDir:"minified",
        //
        //       minify: 'terser',
        //       terserOptions: {
        //           compress: {
        //               defaults:false,
        //           },
        //           toplevel:true,
        //           keep_fnames:true,
        //           keep_classnames:true,
        //       },
        //       rollupOptions:{
        //           treeshake:false
        //       }*!/
        //       */
    },
    plugins: [

        laravel({
            input: [
                'Lareon/CMS/resources/css/app.css',

                'Lareon/CMS/resources/js/app.js','Lareon/CMS/resources/js/javascript.js',
                ...globSync('Lareon/Modules/*/resources/js/app.js'),
                ...globSync('Lareon/Modules/*/resources/css/app.css'),

                'resources/fonts/font.css','resources/css/app.css','resources/css/theme.css', 'resources/js/app.js', 'resources/js/theme.js',
            ],
            publicDirectory: 'public_html',
            refresh: true,
        }),
        tailwindcss(),
    ],
});
