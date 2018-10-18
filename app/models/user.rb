class User < ApplicationRecord
  has_many :budgets
  has_many :categories, through: :budgets
  has_many :accounts, through: :budgets
  has_many :transactions, through: :accounts

  has_secure_password

  validates :username, uniqueness: { case_sensitive: false }
end
