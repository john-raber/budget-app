class Api::V1::BudgetCategoriesController < ApplicationController
  def index
    @budget_categories = BudgetCategory.all
    render json: @budget_categories
  end

  def create
    @budget_category = BudgetCategory.create(budget_category_params)
    if @budget_category.valid?
      render json: { budget_category: BudgetCategorySerializer.new(@budget_category) }, status: :created
    else
      render json: { error: 'failed to create budget_category', errors: @budget_category.errors }, status: :not_acceptable
    end
  end

  private

  def budget_category_params
    params.require(:budget_category).permit(:budget_id, :category_id, :target)
  end
end
