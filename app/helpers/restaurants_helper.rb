module RestaurantsHelper

  def show_review_stars resutaurant
    all_num = resutaurant.reviews.length
    scores = 0
    resutaurant.reviews.each do |review|
      scores += review.score
    end
    scores / all_num
  end

end
