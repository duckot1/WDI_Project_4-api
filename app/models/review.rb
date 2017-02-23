class Review < ApplicationRecord
  belongs_to :user
  belongs_to :job

  before_create :user_rating

  def user_rating
    @usersReviews = Review.where({ user_id: self.user_id })
    ratings = []
    @usersReviews.each do |review|
      ratings.push(review.rating)
    end
    average = ratings.inject{ |sum, el| sum + el }.to_f / ratings.size
    @user = User.find_by_id(self.user_id)
    @user.rating = average
    @user.save
  end

end
