class GamesController < ApplicationController
  before_action :authenticate_user
  before_action :set_item, only: [:show, :update, :destroy]

  # # GET /items
  # def index
  #   @items = Item.all
  #
  #   render json: @items
  # end

  # # GET /items/1
  # def show
  #   render json: @item
  # end

  # POST /games
  def create
    @game = Game.new(game_params)
    @game.user_id = params[:game][:user].first[:id]
    @game.item_id = params[:game][:item].first[:id]

    if @game.save
      render json: @game, status: :created, location: @game
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # # PATCH/PUT /items/1
  # def update
  #   if @item.update(item_params)
  #     render json: @item
  #   else
  #     render json: @item.errors, status: :unprocessable_entity
  #   end
  # end

  # # DELETE /items/1
  # def destroy
  #   @item.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def game_params
      params.require(:game).permit()
    end

end
