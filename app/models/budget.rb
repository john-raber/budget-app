class Budget < ApplicationRecord
  belongs_to :user
  has_many :accounts
  has_many :budget_categories
  has_many :categories, through: :budget_categories

  validates :name, uniqueness: { case_sensitive: false, scope: [:user_id] }
end
