class BudgetSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id

  has_one :user
  has_many :accounts
end
