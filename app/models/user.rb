class User < ApplicationRecord
  has_many :budgets

  has_secure_password

  validates :username, uniqueness: { case_sensitive: false }
end
