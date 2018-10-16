class Api::V1::CategoriesController < ApplicationController
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
    params.require(:category).permit(:name)
  end
end
