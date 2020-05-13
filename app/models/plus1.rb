class Plus1 < ApplicationRecord
    belongs_to :user

    validates :rsvp, presence: {message: 'Please let us know if your plus 1 can come'}
    validates :dietary_requirements, presence: {message: 'Please let us know your plus 1's dietary requirements'}
end
