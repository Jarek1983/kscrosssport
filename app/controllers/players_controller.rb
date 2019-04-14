class PlayersController < ApplicationController
  before_action :find_player, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]

  def index
  	@players = Player.all.order("created_at DESC").limit(6)
  end

  def new
    @player = Player.new
  end

  def create

    @player = Player.new(player_params)
    @player.user = current_user

	  if @player.save
	    redirect_to player_path(@player)
	  else
	    render 'new'
	  end

  end

  def show
  end

  def edit
  end

  def update

    if @player.update(player_params)
        redirect_to player_path(@player)
    else
        render 'edit'
    end

  end

  def destroy
      @player.destroy
      redirect_to players_path
  end

private

  def find_player
    @player = Player.find(params[:id])
  end

	def player_params
		params.require(:player).permit(:name, :description, :achievement, :image, :user_id)
	end

end
