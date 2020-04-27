class ResponsesController < ApplicationController
    def index
        @responses = Response.all 
    end
    
    def show
        @response = Response.find(params[:id])
    end
    
    def new
    end

    def create
        @response = Response.new(response_params.merge(user_id: current_user.id))
        @response.save
        p "response after saving:"
        p @response
        redirect_to @response
    end

    private
    def response_params
        params.require(:response).permit(:name, :text, :rsvp, :dietary_requirements, :diet_details)
    end


end
