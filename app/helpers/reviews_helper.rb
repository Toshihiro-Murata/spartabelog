module ReviewsHelper

  def already_reviewed? restaurant, current_user_id
    restaurant.reviews.each do |review|
      if review.user_id == current_user_id
        return true
      end
    end
    false
  end

end
