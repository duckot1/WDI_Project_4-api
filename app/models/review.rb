class Review < ApplicationRecord
  belongs_to :user
  belongs_to :job

  before_create :user_rating

  def user_rating
    @user = User.find_by_id(self.user_id)
    if @user.rating == nil
      @user.rating = self.rating
      @user.save
    else
      @usersReviews = Review.where({ user_id: self.user_id })
      ratings = [self.rating]
      @usersReviews.each do |review|
        ratings.push(review.rating)
      end
      average = ratings.inject{ |sum, el| sum + el }.to_f / ratings.size
      @user.rating = average
      @user.save
    end
  end

end
