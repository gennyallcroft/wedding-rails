class Response < ApplicationRecord
    belongs_to :user

    validates :guest1_first_name, presence: {message: 'Please enter the first name of guest 1'}, if: :one_guest? 
    validates :guest1_first_name, presence: {message: 'Please enter the first name of guest 1'}, if: :two_guests? 
    validates :guest1_first_name, presence: {message: 'Please enter the first name of guest 1'}, if: :three_guests? 
    validates :guest1_first_name, presence: {message: 'Please enter the first name of guest 1'}, if: :four_guests? 
    validates :guest1_surname, presence: {message: 'Please enter the surname of guest 1'}, if: :one_guest?
    validates :guest1_surname, presence: {message: 'Please enter the surname of guest 1'}, if: :two_guests?
    validates :guest1_surname, presence: {message: 'Please enter the surname of guest 1'}, if: :three_guests?
    validates :guest1_surname, presence: {message: 'Please enter the surname of guest 1'}, if: :four_guests?
    validates :guest2_first_name, presence: {message: 'Please enter the first name of guest 2'}, if: :two_guests? 
    validates :guest2_first_name, presence: {message: 'Please enter the first name of guest 2'}, if: :three_guests? 
    validates :guest2_first_name, presence: {message: 'Please enter the first name of guest 2'}, if: :four_guests? 
    validates :guest2_surname, presence: {message: 'Please enter the surname of guest 2'}, if: :two_guests?
    validates :guest2_surname, presence: {message: 'Please enter the surname of guest 2'}, if: :three_guests?
    validates :guest2_surname, presence: {message: 'Please enter the surname of guest 2'}, if: :four_guests?
    validates :guest3_first_name, presence: {message: 'Please enter the first name of guest 3'}, if: :three_guests? 
    validates :guest3_first_name, presence: {message: 'Please enter the first name of guest 3'}, if: :four_guests? 
    validates :guest3_surname, presence: {message: 'Please enter the surname of guest 3'}, if: :three_guests?
    validates :guest3_surname, presence: {message: 'Please enter the surname of guest 3'}, if: :four_guests?
    validates :guest4_first_name, presence: {message: 'Please enter the first name of guest 4'}, if: :four_guests? 
    validates :guest4_surname, presence: {message: 'Please enter the surname of guest 4'}, if: :four_guests?
    

    def one_guest?
        self.number_of_guests === 1
        p "self.number_of_guests ===1"
        p self.number_of_guests === 1
    end

    def two_guests?
        self.number_of_guests === 2
        p "self.number_of_guests ===2"
        p self.number_of_guests === 2
    end

    def three_guests?
        self.number_of_guests === 3
        p "self.number_of_guests ===3"
        p self.number_of_guests === 3
    end

    def four_guests?
        self.number_of_guests === 4
        p "self.number_of_guests ===4"
        p self.number_of_guests === 4
    end

end

