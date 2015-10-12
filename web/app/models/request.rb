class Request < ActiveRecord::Base
  belongs_to :passenger
  belongs_to :driver
  belongs_to :route
end
