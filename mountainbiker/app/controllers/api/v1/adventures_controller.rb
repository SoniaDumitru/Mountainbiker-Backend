class Api::V1::AdventuresController < ApplicationController

  before_action :find_adventure, only: [:show, :destroy]

  def index
    @adventures = Adventure.all
    # puts @adventures.to_json
    render json: @adventures
  end

  def show
    @adventure = Adventure.find(params[:id])
    render json: @adventure
  end

  def create
    @adventure = Adventure.new(adventure_params)
    @user = User.find(@adventure.user_id)
    if @user.adventures.select{|adventure| adventure.path_id == @adventure.path_id}.length == 0
      @adventure.save
      render json: @adventure
    end
  end

  def destroy
    @adventure.delete
    render json: @adventure
  end

  end

  private

  def adventure_params
    params.require(:adventure).permit(:user_id, :path_id, :name, :location, :image, :summary, :length)
  end

  def find_adventure
    @adventure = Adventure.find(params[:id])
  end
