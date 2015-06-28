module RestaurantsHelper

  def get_favorite(user_id, resutaurant)
    return nil unless (user_id and resutaurant)
    resutaurant.favorites.each do |favorite|
      return favorite if user_id == favorite.user_id
    end
    nil
  end

  def shop_image_url resutaurant
    return resutaurant.image.url if resutaurant.image.url
    "/images/nophoto.gif"
  end

  def calc_score resutaurant
    all_stars_num = 5
    all_num = resutaurant.reviews.length
    scores = 0
    resutaurant.reviews.each do |review|
      scores += review.score
    end
    if scores == 0
      return 0
    end
    colored_stars = (scores / all_num)
  end

  def show_review_stars score
    case score.round
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
