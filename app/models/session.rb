class Session < ActiveRecord::Base

  has_many :taggings
  has_many :gifs, through: :taggings

  validates :tag, presence: true


end
