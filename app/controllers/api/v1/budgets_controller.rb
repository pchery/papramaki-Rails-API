class Api::V1::BudgetsController < ApplicationController
  before_action :set_budget, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  respond_to :json

  # GET /budgets
  def index
    @budgets = Budget.where(user_id: current_user.id).sort_by(&:created_at).reverse!
    respond_with @budgets
  end

  # GET /budgets/1
  def show
    # @expenditures = Expenditure.where(budget_id: @budget.id)
    respond_with @budget
  end

  # POST /budgets
  def create
    @budget = Budget.new(budget_params)
    # If nested route:
    # @budget = current_user.budgets.build(budget_params)
    @budget.user_id = current_user.id
    @budget.save

    if @budget.save
      render json: @budget, status: 201, location: [:api, @budget]
    else
      render json: @budget.errors, status: 442
    end
  end

  # PATCH/PUT /budgets/1
  def update
    if @budget.update(budget_params)
      render json: @budget, status: 200, location: [:api, @budget]
    else
      render json: @budget.errors, status: 442
    end
  end

  # DELETE /budgets/1
  def destroy
    @budget.destroy
    head 204
  end

  private

  def set_budget
    @budget = Budget.find(params[:id])
  end

  def budget_params
    params.permit(
      :amount,
      :duration
    )
  end
end
