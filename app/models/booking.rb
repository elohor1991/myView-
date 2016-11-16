class Booking <ActiveRecord::Base
  belongs_to :martist
  belongs_to :client
end