class Response < ApplicationRecord
    belongs_to :user
    validates :guest1_rsvp, presence: {message: 'Please let us know if you can come'}, if: :one_guest?

    def one_guest?
        self.number_of_guests === 1
    end

    # if :guest1_rsvp === "yes"
    #     p "this is :guest1_rsvp"
    #     p :guest1_rsvp
    #     validates :guest1_dietary_requirements, presence: {message: 'Please let us know your dietary requirements'}
    # end
end

