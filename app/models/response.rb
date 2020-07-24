class Response < ApplicationRecord
    belongs_to :user
    # validates :rsvp, presence: {message: 'Please let us know if you can come'}
    
end
