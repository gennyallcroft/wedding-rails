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
        @response = Response.new(response_params)

        @response.save
        redirect_to @response
    end

    private
    def response_params
        params.require(:response).permit(:name, :text, :rsvp, :dietary_requirements)
    end


end
