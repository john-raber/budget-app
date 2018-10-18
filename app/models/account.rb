class Account < ApplicationRecord
  belongs_to :budget
  has_many :transactions

  validates :nickname, uniqueness: { case_sensitive: false }
end
