class AboutController < ApplicationController
  before_action :find_about, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]

  def index
    @abouts = About.all
  end

  def new
    @about = About.new
  end

  def create

    @about = About.new(player_params)
    @about.user = current_user

    if @about.save
      redirect_to about_path(@about)
    else
      render 'new'
    end

  end

  def show
  end

  def edit
  end

  def update

    if @about.update(about_params)
        redirect_to about_path(@about)
    else
        render 'edit'
    end

  end

  def destroy
      @about.destroy
      redirect_to root_path
  end

private

  def find_about
    @about = About.find(params[:id])
  end

  def about_params
    params.require(:about).permit(:president, :vice_president, :treasure, :description, :user_id)
  end
end
