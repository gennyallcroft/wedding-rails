class ApplicationController < ActionController::Base

    before_action :authorized
    helper_method :current_user
    helper_method :logged_in?
    helper_method :current_response
    helper_method :responded?
    helper "errors"


    def current_user    
        User.find_by(id: session[:user_id])  
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
