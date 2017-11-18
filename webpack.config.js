module.exports = {
    entry: './src/main/resources/app.jsx',
    output: {
      path: __dirname + '/src/main/resources/static', 
      filename: 'bundle.js' 
    },
    module: {
        loaders: [
          {
            test: /.(js|jsx)$/,
            loader: 'babel-loader',
            exclude: /node_modules/,
            query: {
              presets: ['es2015', 'react']
            }
          }
        ]
      }
  };