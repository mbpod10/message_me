# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "mbpod10", email: "mbpod10@gmail.com", password: "123")
User.create(username: "beep10", email: "beep10@gmail.com", password: "123")
User.create(username: "martha87", email: "martha87@gmail.com", password: "123")
User.create(username: "mark15", email: "mark15@gmail.com", password: "123")
User.create(username: "luke47", email: "luke47@gmail.com", password: "123")
User.create(username: "john69", email: "john69@gmail.com", password: "123")
User.create(username: "mary98", email: "mary98@gmail.com", password: "123")
User.create(username: "chris02", email: "chris02@gmail.com", password: "123")
User.create(username: "tyler47", email: "tyler47@gmail.com", password: "123")
User.create(username: "barabas47", email: "barabas47@gmail.com", password: "123")
User.create(username: "gimle56", email: "gimle56@gmail.com", password: "123")
User.create(username: "roger78", email: "roger78@gmail.com", password: "123")
User.create(username: "jamie65", email: "jamie65@gmail.com", password: "123")
User.create(username: "hyreme2", email: "hyreme2@gmail.com", password: "123")

Message.create(body: "This is my first message", user_id: 1)
Message.create(body: "This is my second message", user_id: 1)
Message.create(body: "Hello", user_id: 2)
Message.create(body: "What's up!", user_id: 2)