# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(username:  "alex",
             email:     "hello@goose.im",
             password:              "foobar22",
             password_confirmation: "foobar22")

user = User.find(1)
content = '{"feels":{"mood":"5","energy":"3","pain":"4","fog":"6"},"notes":"","time":1428186709192}'
user.entries.create!(content: content)