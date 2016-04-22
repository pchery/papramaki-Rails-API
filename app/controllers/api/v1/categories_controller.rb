class Api::V1::CategorysController < ApplicationController
  before_action :set_category, only: [:show, :update, :destroy]
  before_action :authenticate_user!
  load_and_authorize_resource # CanCanCan helper
  respond_to :json

  # GET /categories
  def index
    @categories = Category.where(user_id: current_user.id).sort_by(&:created_at).reverse!
  end

  # GET /categories/1
  def show
  end

  # POST /categories
  def create
    @category = Category.new(category_params)
    # If nested route:
    # @category = current_user.categorys.build(category_params)
    @category.user_id = current_user.id
    @category.save

    if @category.save
      render :show, status: 201, location: [:api, @category]
    else
      render json: @category.errors, status: 442
    end
  end

  # PATCH/PUT /categorys/1
  def update
    if @category.update(category_params)
      render :show, status: 200, location: [:api, @category]
    else
      render json: @category.errors, status: 442
    end
  end

  # DELETE /categorys/1
  def destroy
    @category.destroy
    head 204
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.permit(
      :name,
      :color
    )
  end
end
