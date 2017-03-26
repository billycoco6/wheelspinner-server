class SpinsController < ApplicationController
  before_action :authenticate_user
  before_action :set_spin, only: [:show, :update, :destroy]

  # GET /spins
  def index
    @spins = Spin.all

    render json: @spins
  end

  # GET /spins/1
  def show
    render json: @spin
  end

  # POST /spins
  def create
    @spin = Spin.new(spin_params)
    @spin.category_id = params[:spin][:category].first[:id]

    if @spin.save
      render json: @spin, status: :created, location: @spin
    else
      render json: @spin.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /spins/1
  def update
    if @spin.update(spin_params)
      render json: @spin
    else
      render json: @spin.errors, status: :unprocessable_entity
    end
  end

  # DELETE /spins/1
  def destroy
    @spin.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spin
      @spin = Spin.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def spin_params
      params.require(:spin).permit(:name, :tag)
    end
end
