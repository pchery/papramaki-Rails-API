class Api::V1::BudgetsController < ApplicationController
  before_action :set_budget, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # respond_to :json

  # GET /budgets
  def index
    @budgets = Budget.where(user_id: current_user.id).sort_by(&:created_at).reverse!
    respond_to do |format|
      format.json { render }
    end
  end

  # GET /budgets/1
  def show
    @expenditures = Expenditure.where(budget_id: @budget.id)
  end

  # POST /budgets
  def create
    @budget = Budget.new(budget_params)
    # If nested route:
    # @budget = current_user.budgets.build(budget_params)

    respond_to do |format|
      if @budget.save
        format.json { render :show, status: 201, location: [:api, @budget] }
      else
        format.json { render json: @budget.errors, status: 442 }
      end
    end
  end

  # PATCH/PUT /budgets/1
  def update
    respond_to do |format|
      if @budget.update(budget_params)
        format.json { render :show, status: 200, location: [:api, @budget] }
      else
        format.json { render json: @budget.errors, status: 442 }
      end
    end
  end

  # DELETE /budgets/1
  def destroy
    @budget.destroy
    respond_to do |format|
      format.json { head 204 }
    end
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
