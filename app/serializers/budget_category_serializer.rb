class BudgetCategorySerializer < ActiveModel::Serializer
  attributes :id, :budget_id, :category_id, :target
  has_one :budget
  has_one :category
end
