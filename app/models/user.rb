class User < ApplicationRecord
    has_many :responses

    has_secure_password validations: false
  
    validates :first_name, presence: {message: 'Please enter your first name'}
    validates :surname, presence: {message: 'Please enter your surname'}
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Please enter a valid email address" },
    presence: {message: 'Please enter your email address'}, :uniqueness => { :case_sensitive => false, message: "You have already signed up with this email address, please sign in" }, :reduce => true

    validates :password, presence: {message: 'Please enter a password'},
                         length: {minimum: 6,
                         message: 'Your password must contain at least 6 characters'},
                         :reduce => true,
                         on: :create

    before_save :downcase_fields

    def downcase_fields
        self.email.downcase!
    end


    def send_password_reset
        generate_token(:password_reset_token)
        self.password_reset_sent_at = Time.zone.now
        save!
        UserMailer.password_reset(self).deliver
    end

    def generate_token(column)
        # begin 
            self[column] = SecureRandom.urlsafe_base64
        # end while @user.Exists?(column => self[:column]_)
    end


end
