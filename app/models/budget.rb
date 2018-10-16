class Budget < ApplicationRecord
  belongs_to :user
  has_many :accounts
  has_many :months

  validates :name, uniqueness: { case_sensitive: false, scope: [:user_id] }
end
