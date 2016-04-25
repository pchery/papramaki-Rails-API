class Api::V1::BalancesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_balance, only: [:show, :update, :destroy]
  load_and_authorize_resource # CanCanCan helper
  respond_to :json

  # GET /balances
  def index
    @balance = Balance.find_by(user_id: current_user.id)
    render :show, status: 200, location: [:api, @balance]
  end

  # GET /balances/1
  def show
  end

  # POST /balances
  def create
    @balance = Balance.new(balance_params)
    # If nested route:
    # @balance = current_user.balances.build(balance_params)
    @balance.user_id = current_user.id
    @balance.save

    if @balance.save
      render :show, status: 201, location: [:api, @balance]
    else
      render json: @balance.errors, status: 442
    end
  end

  # PATCH/PUT /balances/1
  def update
    if @balance.update(balance_params)
      render :show, status: 200, location: [:api, @balance]
    else
      render json: @balance.errors, status: 442
    end
  end

  # DELETE /balances/1
  def destroy
    @balance.destroy
    head 204
  end

  private

  def set_balance
    @balance = Balance.find(params[:id])
  end

  def balance_params
    params.permit(
      :amount
    )
  end
end
