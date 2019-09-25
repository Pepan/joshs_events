# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Event.delete_all
Group.delete_all

first_group = Group.create! name: 'first group'
first_event = first_group.events.create! name: 'first event', score_summary: 0
first_user = first_group.users.create! name: 'first user'

first_event.event_votes.create! user: first_user, score: 1
first_event.event_votes.create! user: first_user, score: 2

second_event = first_group.events.create! name: 'second event', score_summary: 0
second_user = first_group.users.create! name: 'second user'

second_event.event_votes.create! user: second_user, score: 3
second_event.event_votes.create! user: second_user, score: 4

