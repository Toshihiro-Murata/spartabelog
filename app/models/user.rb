class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name,
    presence: true, length: { maximum: 20 }
  #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  #validates :email,
  #  presence: true, format: { with: VALID_EMAIL_REGEX }
  has_many :reviews
  has_many :restaurant, through: :reviews

  has_many :favorites
  has_many :restaurant, through: :favorites
end
