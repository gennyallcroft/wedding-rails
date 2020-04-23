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
        p "response before saving"
        p @response
        @response.save

        p "response after saving:"
        p @response
        p "response id"
        p params[:id]
        p @id = @response.id
        redirect_to controller: 'responses'
    end

    private
    def response_params
        params.require(:response).permit(:name, :text, :rsvp, :dietary_requirements, :diet_details)
    end


end
