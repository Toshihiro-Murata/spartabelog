class Restaurant < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews

  mount_uploader :image, ShopImageUploader
end
