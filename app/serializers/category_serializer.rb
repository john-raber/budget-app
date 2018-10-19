class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :transactions
  has_one :budget
  has_many :transactions
end
