class Account < ApplicationRecord
  belongs_to :budget

  validates :nickname, uniqueness: { case_sensitive: false }
end
