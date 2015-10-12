class Passenger < ActiveRecord::Base
    has_many :favorite
    
    validates :name, presence: true
end
