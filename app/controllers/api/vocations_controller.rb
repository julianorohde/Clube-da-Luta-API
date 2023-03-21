class Api::VocationsController < ApplicationController
  before_action :set_vocation, only: %i[show update destroy]

  # GET /vocations
  def index
    @vocations = Vocation.all

    render json: @vocations
  end

  # GET /vocations/1
  def show
    render json: @vocation
  end

  # POST /vocations
  def create
    @vocation = Vocation.new(vocation_params)

    if @vocation.save
      render json: @vocation, status: :created, location: @vocation
    else
      render json: @vocation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /vocations/1
  def update
    if @vocation.update(vocation_params)
      render json: @vocation
    else
      render json: @vocation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /vocations/1
  def destroy
    @vocation.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_vocation
    @vocation = Vocation.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def vocation_params
    params.require(:vocation).permit(:name)
  end
end
