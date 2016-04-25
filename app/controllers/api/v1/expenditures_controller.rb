class Api::V1::ExpendituresController < ApplicationController
  before_action :set_expenditure, only: [:show, :update, :destroy]
  before_action :authenticate_api_user!
  load_and_authorize_resource # CanCanCan helper
  respond_to :json

  # GET /expenditures
  def index
    # @expenditures = Expenditure.where(user_id: current_user.id).sort_by(&:created_at).reverse!
    @expenditures = current_budget.expenditures.sort_by(&:created_at).reverse!
  end

  # GET /expenditures/1
  def show
  end

  # POST /expenditures
  def create
    @expenditure = Expenditure.new(expenditure_params)
    # If nested route:
    # @expenditure = current_user.expenditures.build(expenditure_params)
    @expenditure.user_id = current_user.id
    @expenditure.save

    if @expenditure.save
      render :show, status: 201, location: [:api, @expenditure]
    else
      render json: @expenditure.errors, status: 442
    end
  end

  # PATCH/PUT /expenditures/1
  def update
    if @expenditure.update(expenditure_params)
      render :show, status: 200, location: [:api, @expenditure]
    else
      render json: @expenditure.errors, status: 442
    end
  end

  # DELETE /expenditures/1
  def destroy
    @expenditure.destroy
    head 204
  end

  private

  def set_expenditure
    @expenditure = Expenditure.find(params[:id])
  end

  def expenditure_params
    params.permit(
      :amount,
      :budget_id,
      :category_id
    )
  end
end
