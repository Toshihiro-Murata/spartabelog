module RestaurantsHelper

  def show_review_stars resutaurant
    all_stars_num = 5
    all_num = resutaurant.reviews.length
    scores = 0
    resutaurant.reviews.each do |review|
      scores += review.score
    end
    colored_stars = (scores / all_num).round
    case colored_stars
    when 1
      "/images/star_ll10.gif"
    when 2
      "/images/star_ll20.gif"
    when 3
      "/images/star_ll30.gif"
    when 4
      "/images/star_ll40.gif"
    when 5
      "/images/star_ll50.gif"
    else
      "/images/star_ll00.gif"
    end
  end

end
