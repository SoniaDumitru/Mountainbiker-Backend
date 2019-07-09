require_relative '../../../../lib/api_communicator.rb'

class Api::V1::PathsController < ApplicationController

  before_action :find_path, only: [:show]

  def index
    @paths  = APICall.get_data
    render json: @paths
  end

  def show
    @path = Path.find(params[:id])
    render json: @path
  end

  def create
    @path = Path.new(path_params)
    @path.path_data = path_api_call

    if @path.save
      render json: @path
    end
  end

  private

  def path_params
    params.require(:path).permit(:name, :type, :summary, :difficulty, :stars, :starVotes, :location, :imgSqSmall, :imgSmall, :imgSmallMed, :imgMedium, :length, :ascent, :descent, :high, :low, :longitude, :latitude, :conditionStatus, :conditionDetails, :conditionDate)
  end

  def path_api_call
    APICall.get_data
  end

  def find_path
    @path = Path.find(params[:id])
  end

end
