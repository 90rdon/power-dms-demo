module.exports = {
  dist: {
    options: {
      cache: false
    },
    files: [{
      expand: true,
      cwd: 'tmp/result',
      src: [
        '**/*.{png,gif,jpg,jpeg}',
        '**/*.{eot,svg,ttf,woff}'
      ],
      dest: 'dist/'
    }]
  }
};
