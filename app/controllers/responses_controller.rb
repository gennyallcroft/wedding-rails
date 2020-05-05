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
        p "response before editing"
        p @response
        @response.update(rsvp: params[:response][:rsvp], dietary_requirements: params[:response][:dietary_requirements], diet_details: params[:response][:diet_details], text: params[:response][:text])
        if @response.rsvp === "No"
            @response.dietary_requirements = nil
            @response.diet_details = nil
        end
        
        p "response after update"
        p @response
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
        params.require(:response).permit(:name, :text, :rsvp, :dietary_requirements, :diet_details)
    end


end
