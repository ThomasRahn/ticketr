# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tickets = Ticket.create([{ task: 'First', description: 'Test description' }])
comments = Comment.create([{ comment: 'First', ticket_id: 1 }, { comment: 'Second', ticket_id: 1 }, { comment: 'Third', ticket_id: 1 }])

users = User.create([{ email: 'thomas@rahn.ca', firstname: 'Thomas', lastname: 'Rahn', password_digest: BCrypt::Password.create('Password1') } ])
