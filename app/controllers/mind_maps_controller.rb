class MindMapsController < ApplicationController
  def show
    @mind_map = MindMap.find(params[:id])
    render json: @mind_map
  end
end
