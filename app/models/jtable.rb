class Session < ActiveRecord::Base

  belongs_to :event
  belongs_to :session

end
