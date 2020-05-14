class ResponsesController < ApplicationController
    def index
        @responses = Response.all 
    end
    
    def show
        @response = Response.find(params[:id])
    end
    
    def new
    end

    def edit
        @response = Response.find(params[:id])
    end
    
    def update
        @response = Response.find(params[:id])
        @response.update(rsvp: params[:response][:rsvp], text: params[:response][:text])
        @response.update(dietary_requirements: params[:response][:dietary_requirements], diet_details: params[:response][:diet_details])   
        redirect_to response_path(@response)

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
        params.require(:response).permit(:name, :text, :rsvp, :dietary_requirements, :diet_details, :plus1_first_name, :plus1_surname, :plus1_rsvp, :plus1_dietary_requirements, :plus1_diet_details)
    end


end
