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
		params.require(:review).permit(:dish, :spice_level, :cust_review)
	end
	def restaurant_params
		params.require(:restaurant).permit(:rest_name, :address, :state, :zipcode, :food_type)
	end

end
