# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

users = [
  'john',
  'caleb',
  'greg'
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
    name: 'caleb\'s budget', user_id: 2
  },
  {
    name: 'greg\'s budget', user_id: 3
  }
])

accounts = [
  'main savings',
  'credit card'
]

Account.create({ nickname: accounts[0], budget_id: 1 })
Account.create({ nickname: accounts[1], budget_id: 1 })
Account.create({ nickname: accounts[0], budget_id: 2 })
Account.create({ nickname: accounts[1], budget_id: 2 })
Account.create({ nickname: accounts[0], budget_id: 3 })
Account.create({ nickname: accounts[1], budget_id: 3 })

categories = [
  {
    name: 'food',
    balance: 200.0,
    budget_id: 1
  },
  {
    name: 'videogames',
    balance: 150.0,
    budget_id: 1
  },
  {
    name: 'gas',
    balance: 60.0,
    budget_id: 1
  },
  {
    name: 'utilities',
    balance: 165,
    budget_id: 1
  },
  {
    name: 'rent',
    balance: 950,
    budget_id: 1
  },
  {
    name: 'car payment',
    balance: 400,
    budget_id: 1
  },
  {
    name: 'saving',
    balance: 875,
    budget_id: 1
  },
  {
    name: 'food',
    balance: 200.0,
    budget_id: 2
  },
  {
    name: 'videogames',
    balance: 150.0,
    budget_id: 2
  },
  {
    name: 'gas',
    balance: 60.0,
    budget_id: 2
  },
  {
    name: 'utilities',
    balance: 165,
    budget_id: 2
  },
  {
    name: 'rent',
    balance: 950,
    budget_id: 2
  },
  {
    name: 'car payment',
    balance: 400,
    budget_id: 2
  },
  {
    name: 'saving',
    balance: 875,
    budget_id: 2
  },
  {
    name: 'food',
    balance: 200.0,
    budget_id: 3
  },
  {
    name: 'videogames',
    balance: 150.0,
    budget_id: 3
  },
  {
    name: 'gas',
    balance: 60.0,
    budget_id: 3
  },
  {
    name: 'utilities',
    balance: 165,
    budget_id: 3
  },
  {
    name: 'rent',
    balance: 950,
    budget_id: 3
  },
  {
    name: 'car payment',
    balance: 400,
    budget_id: 3
  },
  {
    name: 'saving',
    balance: 875,
    budget_id: 3
  }
]

categories.each do |c|
  Category.create(c)
end

CSV.foreach('./db/OctoberTransactions.csv', headers: true) do |row|
  # example row: POSTED,10/06/2018,10/08/2018,8405,DOMINO'S 4340,Dining,20.29,

  # based on what the category is from the CSV data, I want to associate the
  # transaction with a category that has already been created by giving the new
  # transaction a different category_id

  case row[5]
  when 'Dining' || 'Grocery'
    category_id = 1
  when 'Internet'
    category_id = 2
  when 'Gas/Automotive'
    category_id = 3
  when 'Utilities'
    category_id = 4
  end

  transaction = {
    name: row[4],
    description: row[4],
    date: row[1],
    amount: row[6],
    transaction_type: 'expense',
    account_id: 1,
    category_id: category_id
  }

  transaction_2 = {
    name: row[4],
    description: row[4],
    date: row[1],
    amount: row[6],
    transaction_type: 'expense',
    account_id: 3,
    category_id: category_id.to_i + 7
  }

  transaction_3 = {
    name: row[4],
    description: row[4],
    date: row[1],
    amount: row[6],
    transaction_type: 'expense',
    account_id: 5,
    category_id: category_id.to_i + 14
  }

  Transaction.create(transaction)
  Transaction.create(transaction_2)
  Transaction.create(transaction_3)
end

Transaction.create({
  name: 'rent',
  description: 'October rent',
  date: '10/01/2018',
  amount: 950,
  transaction_type: 'expense',
  account_id: 1,
  category_id: 5
})

Transaction.create({
  name: 'car payment',
  description: 'October',
  date: '10/15/2018',
  amount: 400,
  transaction_type: 'expense',
  account_id: 1,
  category_id: 6
})

Transaction.create({
  name: 'rent',
  description: 'October rent',
  date: '10/01/2018',
  amount: 950,
  transaction_type: 'expense',
  account_id: 3,
  category_id: 12
})

Transaction.create({
  name: 'car payment',
  description: 'October',
  date: '10/15/2018',
  amount: 400,
  transaction_type: 'expense',
  account_id: 3,
  category_id: 13
})

Transaction.create({
  name: 'rent',
  description: 'October rent',
  date: '10/01/2018',
  amount: 950,
  transaction_type: 'expense',
  account_id: 5,
  category_id: 19
})

Transaction.create({
  name: 'car payment',
  description: 'October',
  date: '10/15/2018',
  amount: 400,
  transaction_type: 'expense',
  account_id: 5,
  category_id: 20
})
