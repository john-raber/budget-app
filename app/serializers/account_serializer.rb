class AccountSerializer < ActiveModel::Serializer
  attributes :id, :nickname, :budget_id, :transactions
  has_one :budget
  has_many :transactions
end
