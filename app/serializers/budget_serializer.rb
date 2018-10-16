class BudgetSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id, :created_at

  has_one :user
  has_many :accounts
end
