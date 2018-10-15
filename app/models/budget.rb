class Budget < ApplicationRecord
  belongs_to :user
  has_many :accounts

  validates :name, uniqueness: { case_sensitive: false, scope: [:user_id] }
end
