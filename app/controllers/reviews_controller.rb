class ReviewsController < ApplicationController

def create
    @review = Review.new(review_params)
    @user = User.find(params[:user_id])
    @review.user = @user
    if @review.save
      redirect_to user_profile_path(@user, anchor: "review-#{@review.id}")
    else
      flash[:alert] = "Something went wrong."
      render :new
    end
end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
