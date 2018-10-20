class Api::V1::TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all
    render json: @transactions
  end

  def create
    @transaction = Transaction.create(transaction_params)
    if @transaction.valid?
      render json: { transaction: TransactionSerializer.new(@transaction) }, status: :created
    else
      render json: { error: 'failed to create transaction', errors: @transaction.errors }, status: :not_acceptable
    end
  end

  private

  def transaction_params
    params.require(:transaction).permit(:name, :description, :amount, :date, :account_id, :category_id)
  end
end
