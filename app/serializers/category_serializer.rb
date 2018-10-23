class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :balance, :transactions
  has_one :budget
  has_many :transactions
end
