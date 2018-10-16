class Api::V1::MonthsController < ApplicationController
  def create
    @month = Month.create(month_params)
    if @month.valid?
      render json: { month: MonthSerializer.new(@month) }, status: :created
    else
      render json: { error: 'failed to create month', errors: @month.errors }, status: :not_acceptable
    end
  end

  private

  def month_params
    params.require(:month).permit(:start_date, :end_date, :budget_id)
  end
end
