class Api::V1::CategoriesController < ApplicationController
  before_action :find_category, only: [:show]

  def index
    @categories = Category.all
    render json: @categories
  end

  def show
    render json: @category
  end

  def create
    @category = Category.create(category_params)
    if @category.valid?
      render json: { category: CategorySerializer.new(@category) }, status: :created
    else
      render json: { error: 'failed to create category', errors: @category.errors }, status: :not_acceptable
    end
  end

  private

  def category_params
    params.require(:category).permit(:name, :balance, :budget_id)
  end

  def find_category
    @category = Category.find(params[:id])
  end
end
