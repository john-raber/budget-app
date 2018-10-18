class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :budgets, :transactions
  has_many :transactions
end
