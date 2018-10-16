class Month < ApplicationRecord
  belongs_to :budget

  validates :start_date, uniqueness: { scope: :budget_id }
  validates :end_date, uniqueness: { scope: :budget_id }
end
