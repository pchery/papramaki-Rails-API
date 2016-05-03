class Api::V1::BudgetsController < ApplicationController
  before_action :authenticate_api_user!
  before_action :set_budget, only: [:show, :update, :destroy]
  load_and_authorize_resource # CanCanCan helper
  respond_to :json
  include BudgetsHelper

  # GET /budgets
  def index
    udpate_budget_expiration
    update_exp_sum
    @budgets = Budget.where(user_id: current_user.id).sort_by(&:created_at).reverse!
    if params[:current_budget] == "true"
      @budget = @budgets.first
      render :show, status: 200, location: [:api, @budget]
    end
  end

  # GET /budgets/1
  def show
  end

  # POST /budxgets
  def create
    @budget = Budget.new(budget_params)
    # If nested route:
    # @budget = current_user.budgets.build(budget_params)
    @budget.user_id = current_user.id
    x = @budget.duration
    @budget.expiration_date = Date.today + x.weeks
    @budget.save

    if @budget.save
      render :show, status: 201, location: [:api, @budget]
    else
      render json: @budget.errors, status: 442
    end
  end

  # PATCH/PUT /budgets/1
  def update
    if @budget.update(budget_params)
      render :show, status: 200, location: [:api, @budget]
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
      :duration,
      :expiration_date,
      :expired
    )
  end
end
