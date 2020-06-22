class ReviewsController < ApplicationController
 def create
  @motel = Motel.find(params[:motel_id])
  @review = Review.new(review_params)
  @review.motel = @motel
  if @review.save
   redirect_to motel_path(@motel, anchor: "review-#{@review.id}")
  else
   render 'motels/show'
  end
 end

 private

 def review_params
  params.require(:review).permit(:content)
 end
end
