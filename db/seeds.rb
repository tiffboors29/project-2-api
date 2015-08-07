User.create!([
    {given_name: "Tiffany", surname: "Boorsma", email: "tiff@tiff.com", password: "tiff", admin: true},
    {given_name: "Gordon", surname: "Bombay", email: "gordon@ducks.com", password: "abc123"},
    {given_name: "Charlie", surname: "Conway", email: "charlie@ducks.com", password: "abc123"},
    {given_name: "Greg", surname: "Goldberg", email: "greg@ducks.com", password: "abc123"},
    {given_name: "Michelle", surname: "McKay", email: "michelle@ducks.com", password: "abc123"},
    {given_name: "Fulton", surname: "Reed", email: "fulton@ducks.com", password: "abc123"},
    {given_name: "Dean", surname: "Portman", email: "dean@ducks.com", password: "abc123"},
    {given_name: "Lester", surname: "Averman", email: "lester@ducks.com", password: "abc123"}
])

Job.create!([
  {title: "Fender", description: "Re-Frett & Full Setup", status: "In Progress", user_id: 1, cost: 75.25},
  {title: "Gibson", description: "Re-String", status: "Ready for Pickup", user_id: 1, cost: 75.25},
  {title: "Taylor", description: "Full Setup", status: "In Progress", user_id: 2, cost: 60.25},
  {title: "Epiphone", description: "Raise Action", status: "In Progress", user_id: 3, cost: 25.25},
  {title: "Acoustic", description: "Re-String & Frett Polish", status: "Ready for Pickup", user_id: 4, cost: 45.25},
  {title: "Jazz Bass", description: "Re-Frett & Full Setup", status: "In Progress", user_id: 5, cost: 75.25},
  {title: "Super Strat", description: "Sparkle Flake Finnish", status: "Ready for Pickup", user_id: 6, cost: 105.25},
  {title: "Fender", description: "Full Setup", status: "In Progress", user_id: 2, cost: 60.25},
  {title: "Epiphone", description: "Raise Action", status: "In Progress", user_id: 2, cost: 25.25}
])


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
