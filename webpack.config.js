module.exports = {
    entry: './src/main/resources/app.js',
    output: {
      path: __dirname + '/src/main/resources/static', 
      filename: 'bundle.js' 
    },
    module: {
        loaders: [
          {
            test: /.js$/,
            loader: 'babel-loader',
            exclude: /node_modules/,
            query: {
              presets: ['es2015', 'react']
            }
          }
        ]
      }
  };