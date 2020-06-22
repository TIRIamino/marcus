class MotelsController < ApplicationController
 def index
  @motels = Motel.all
 end

 def show
  @motel = Motel.find(params[:id])
  @review = Review.new
 end
end
