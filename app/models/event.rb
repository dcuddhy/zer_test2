class Event < ActiveRecord::Base

  has_many :jtables
  has_many :sessions, through: :jtables

end
