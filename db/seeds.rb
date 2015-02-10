# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.find(1)
content = '{"feels":{"mood":"4","energy":"3","pain":"5","fog":"6"},"notes":"imitrex","time":1422038001715}'
user.entries.create!(content: content)