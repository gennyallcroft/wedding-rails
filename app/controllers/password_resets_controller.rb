class PasswordResetsController < ApplicationController

  skip_before_action :authorized
  

  def new

  end

  def create
    @user = User.find_by_email(params[:email])
    if @user
      @user.send_password_reset 
      redirect_to '/login', :notice => "An email has been sent to reset your password"
    else
      redirect_to  new_password_reset_path, :notice => "Please enter the email address you signed up with"
    end
  end

  def edit
    @user = User.find_by_password_reset_token!(params[:id])
  end


  def update
    @user = User.find_by_password_reset_token!(params[:id])
    if @user.password_reset_sent_at < 2.hours.ago
      redirect_to new_password_reset_path, :alert => "Password token has expired"
    elsif 
      new_password = params[:user][:password]
      encrypted_password = BCrypt::Password.create(new_password)
      @user.update(password_digest: encrypted_password)
      redirect_to '/login', :notice => "Password has been reset"
    else
      render  :edit
  end
end



end

