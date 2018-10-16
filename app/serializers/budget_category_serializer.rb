class BudgetCategorySerializer < ActiveModel::Serializer
  attributes :id
  has_one :budget
  has_one :category
end
