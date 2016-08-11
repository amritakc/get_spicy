class ReviewsController < ApplicationController

	def index
	end

	def create_review
	end

	def create
		@new_review = Review.new(review_params)
		render :text => "create review"

	end

	private
	def review_params
		params.require(:review).permit(:restaurant, :dish, :spice_level, :review)
	end

end
