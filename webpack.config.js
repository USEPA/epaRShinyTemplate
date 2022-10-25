let path = require('path');

module.exports = {
    entry: {
      'main': path.join(__dirname, 'srcjs', 'main.jsx')
    },
    output: {
        path: path.join(__dirname, 'inst/www/epaRShinyTemplate'),
        filename: '[name].js'
    },
    module: {
        rules: [
            {
                test: /\.jsx?$/,
                loader: 'babel-loader',
                options: {
                    presets: ['@babel/preset-env', '@babel/preset-react']
                }
            },
            // For CSS so that import "path/style.css"; works
            {
                test: /\.(css|s[ac]ss)$/i,
                use: ['style-loader', 'css-loader', 'sass-loader']
            },
            {
                test: /\.(jpg|jpeg|png|woff(2)?|ttf|eot|svg|ico)(\?v=\d+\.\d+\.\d+)?$/,
                type: 'asset',
            }
        ]
    },
    externals: {
        'react': 'window.React',
        'react-dom': 'window.ReactDOM',
        'reactR': 'window.reactR'
    },
    stats: {
        colors: true
    },
    devtool: 'source-map'
};
