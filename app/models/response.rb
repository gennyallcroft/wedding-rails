class Response < ApplicationRecord
    belongs_to :user
    validates :rsvp, presence: {message: 'Please let us know if you can come'}
    validates :dietary_requirements, presence: {message: 'Please let us know your dietary requirements'}
    
end
