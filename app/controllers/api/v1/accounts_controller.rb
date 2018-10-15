class Api::V1::AccountsController < ApplicationController
  def index
    @accounts = Account.all
    render json: @accounts
  end

  def create
    @account = Account.create(account_params)
    if @account.valid?
      render json: { account: AccountSerializer.new(@account) }, status: :created
    else
      render json: { error: 'failed to create account', errors: @account.errors }, status: :not_acceptable
    end
  end

  private

  def account_params
    params.require(:account).permit(:nickname, :budget_id)
  end
end
