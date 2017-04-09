class Review < ApplicationRecord
  belongs_to :user
  belongs_to :job

  before_create :user_rating

  def user_rating
    @usersReviews = Review.where({ user_id: self.user_id })
    p @usersReviews
    ratings = []
    @usersReviews.each do |review|
      ratings.push(review.rating)
    end
    p ratings
    average = ratings.inject{ |sum, el| sum + el }.to_f / ratings.size
    p average
    @user = User.find_by_id(self.user_id)
    p @user
    @user.rating = average
    p @user
    @user.save
  end

end
