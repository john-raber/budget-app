class AccountSerializer < ActiveModel::Serializer
  attributes :id, :nickname, :budget_id
  has_one :budget
end
