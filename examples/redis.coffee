{Model} = require __dirname + '/../src'
config = require './config'

class User extends Model
  config: config
  adapter: 'redis'
  idGenerator: 'redis'
  fields: ['name', 'firstName', 'lastName', 'email']
  hasMany: -> [Post]

  setName: (name) ->
    names = name.split(" ")
    @firstName = names[0]
    @lastName = names[1]

class Post extends Model
  fields: ['title', 'user_id']
  belongsTo: -> [User]

# user = new User()
# user.name = "Bob Hope"
# user.email = "bob@hope.com"
# user.save ->
#   console.log user

user = new User
  name: 'Ryan LeFevre'
  email: 'ryan@layervault.com'

console.log user

# user.save ->
#   User.find([3, 4]).get (err, users) ->
#     console.log users