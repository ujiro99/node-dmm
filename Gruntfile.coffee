module.exports = (grunt) ->

  # Load plugins automatically
  require("load-grunt-tasks") grunt

  # set variables
  config =
    app: 'lib',

  # configure
  grunt.initConfig

    config: config

    esteWatch:
      options:
        livereload:
          enabled: false
        dirs: [
            'coffee/**/',
            'test/**/'
          ]
      # extension settings
      coffee: (path) ->
        if path.match(/test/)
          'mochaTest'
        else
          grunt.config 'coffee.compile.files', [
            nonull: true
            expand: true
            cwd: 'coffee/'
            src: path.slice(path.indexOf('/'))
            dest: '<%= config.app %>'
            ext: '.js'
          ]
          'coffee:compile'

    coffee:
      compile:
        files: [
          expand: true
          cwd: 'coffee/'
          src: ['**/*.coffee']
          dest: '<%= config.app %>'
          ext: '.js'
        ]

    mochaTest:
      test:
        options:
          reporter: 'spec'
          require: 'coffee-script/register'
        src: ['test/**/*.coffee']


  # tasks
  grunt.registerTask 'watch', ['esteWatch']
  grunt.registerTask 'build', ['coffee:compile']
  grunt.registerTask 'test', ['mochaTest']

