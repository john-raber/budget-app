class Api::V1::BudgetsController < ApplicationController
  def index
    @budgets = Budget.all
    render json: @budgets
  end

  def create
    @budget = Budget.create(budget_params)
    if @budget.valid?
      render json: { budget: BudgetSerializer.new(@budget) }, status: :created
    else
      render json: { error: 'failed to create budget', errors: @budget.errors }, status: :not_acceptable
    end
  end

  private

  def budget_params
    params.require(:budget).permit(:name, :user_id)
  end
end
