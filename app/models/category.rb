class Category < ApplicationRecord
  has_many :budget_categories
  has_many :budgets, through: :budget_categories

  validates :name, uniqueness: { case_sensitive: false }
end
