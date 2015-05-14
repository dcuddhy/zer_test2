class Session < ActiveRecord::Base

  has_many :jtables
  has_many :events, through: :jtables

end
