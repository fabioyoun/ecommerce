class ReviewsController < ApplicationController

  def index
  	@review = Review.find(params[:id])
  	render :json => @review
  end

  def new
  	review = Review.new(review_params)
  end
end


private
def review_params
	params.require(:reviews).permit(:content)
end