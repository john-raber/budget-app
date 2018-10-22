# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = [
  'john',
  'volcanicbadger',
  'grubblingwalrus'
]

users.each do |u|
  User.create({
    username: u,
    email: "#{u}@example.com",
    password_digest: BCrypt::Password.create('hi')
  })
end

Budget.create([
  {
    name: 'john\'s budget', user_id: 1
  },
  {
    name: 'ramen diet', user_id: 1
  },
  {
    name: 'badger\'s budget', user_id: 2
  },
  {
    name: 'walrus\'s budget', user_id: 3
  }
])

accounts = [
  'main savings',
  'buried gold bars',
  'zombie apocalypse fund',
  'credit card'
]

Account.create({ nickname: accounts[0], budget_id: 1 })
Account.create({ nickname: accounts[1], budget_id: 1 })
Account.create({ nickname: accounts[2], budget_id: 2 })
Account.create({ nickname: accounts[2], budget_id: 1 })
Account.create({ nickname: accounts[3], budget_id: 3 })
Account.create({ nickname: accounts[1], budget_id: 3 })
Account.create({ nickname: accounts[2], budget_id: 4 })
Account.create({ nickname: accounts[1], budget_id: 4 })

categories = [
  {
    name: 'food',
    balance: 200.0,
    budget_id: 1
  },
  {
    name: 'utilities',
    balance: 165,
    budget_id: 1
  },
  {
    name: 'rent',
    balance: 1650,
    budget_id: 1
  },
  {
    name: 'student loans',
    balance: 550,
    budget_id: 2
  },
  {
    name: 'car payment',
    balance: 400,
    budget_id: 1
  },
  {
    name: 'mortgage',
    balance: 927,
    budget_id: 2
  },
  {
    name: 'saving',
    balance: 875,
    budget_id: 1
  }
]

categories.each do |c|
  Category.create(c)
end
