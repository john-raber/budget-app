class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :amount, :date
  has_one :category
  has_one :account
end
