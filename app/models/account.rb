class Account < ApplicationRecord
  belongs_to :budget
  has_many :transactions

  validates :nickname, uniqueness: { scope: :budget_id, case_sensitive: false }
end
