ActiveRecord = require '../lib'

module.exports = new ActiveRecord.Configuration
  sqlite:
    database: "#{__dirname}/test.db"
  mysql:
    host: 'localhost'
    database: 'test'
    user: 'test'
    password: 'password'
  redis:
    host: null
    port: null
  rest:
    url: 'https://api.heello.com'
    version: 1
