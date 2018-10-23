class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :amount, :date, :transaction_type
  has_one :category
  has_one :account
end
