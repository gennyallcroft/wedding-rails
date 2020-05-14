class User < ApplicationRecord
    has_many :responses

    has_secure_password validations: false

    validates :first_name, presence: {message: 'Please enter your first name'}
    validates :surname, presence: {message: 'Please enter your surname'}
    validates :email, presence: {message: 'Please enter your email address'}, :uniqueness => { :case_sensitive => false, message: "You have already signed up with this email address, please sign in" }




    validates :password, presence: {message: 'Please enter a password'},
                         length: {minimum: 6,
                         message: 'Your password must contain at least 6 characters'}
    validates_confirmation_of :password, :message => 'Your passwords do not match, please try again'
end
