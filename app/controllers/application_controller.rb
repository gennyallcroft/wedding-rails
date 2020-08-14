class ApplicationController < ActionController::Base

    before_action :authorized
    helper_method :current_user
    helper_method :logged_in?
    helper_method :current_response
    helper_method :responded?


    def current_user    
        User.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
    end

    def current_response    
        Response.find_by(user_id: session[:user_id])  
    end

    def responded?
        !current_response.nil?
    end

    def logged_in?
        !current_user.nil?  
    end

    def authorized
        redirect_to '/users/new' unless logged_in?
    end
    
end
