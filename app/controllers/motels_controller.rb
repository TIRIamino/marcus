class MotelsController < ApplicationController
 def index
  @motels = Motel.all
 end

 def show
  @motel = Motel.find(params[:id])
  @review = Review.new
 end

 def destroy
    @motel = Motel.find(params[:id])
    @motel.destroy
    redirect_to motels_path
  end
end
