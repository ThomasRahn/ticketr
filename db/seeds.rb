# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{ email: 'thomas@rahn.ca', firstname: 'Thomas', lastname: 'Rahn', password_digest: BCrypt::Password.create('Password1') } ])

projects = Project.create([{code: "test", name: "Test", description: "This is a test project", user_id: users.first.id }])

tickets = Ticket.create([{ task: 'First', description: 'Test description', user_id: users.first.id, project_id: projects.first.id }])

comments = Comment.create([{ comment: 'First', ticket_id: tickets.first.id, user_id: users.first.id }, 
			{ comment: 'Second', ticket_id: tickets.first.id, user_id: users.first.id }, 
			{ comment: 'Third', ticket_id: tickets.first.id, user_id: users.first.id }])