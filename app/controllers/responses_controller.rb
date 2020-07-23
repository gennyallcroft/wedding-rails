class ResponsesController < ApplicationController
    def index
        @responses = Response.all 
    end
    
    def show
        @response = Response.find(params[:id])
    end
    
    def new
        @response = Response.new
    end

    def edit
        @response = Response.find(params[:id])
    end
    
    def update
        @response = Response.find(params[:id])
        @response.update(rsvp: params[:response][:rsvp], text: params[:response][:text])
        @response.update(dietary_requirements: params[:response][:dietary_requirements], diet_details: params[:response][:diet_details])   
        @response.update(plus1_first_name: params[:response][:plus1_first_name], plus1_surname: params[:response][:plus1_surname], plus1_dietary_requirements: params[:response][:plus1_dietary_requirements], plus1_diet_details: params[:response][:plus1_diet_details])
        @response.update(plus1_rsvp: params[:response][:plus1_rsvp])
        @response.plus1_first_name = @response.plus1_first_name.capitalize
        @response.plus1_surname = @response.plus1_surname.capitalize
        @response.diet_details = @response.diet_details.capitalize
        @response.plus1_diet_details = @response.plus1_diet_details.capitalize
        @response.save
        redirect_to response_path(@response)

    end

    def create
        @response = Response.new(response_params.merge(user_id: current_user.id))
        # @response.plus1_first_name = @response.plus1_first_name.capitalize
        # @response.plus1_surname = @response.plus1_surname.capitalize
        # @response.diet_details = @response.diet_details.capitalize
        # @response.plus1_diet_details = @response.plus1_diet_details.capitalize
        # @response.save
        p "response after saving:"
        p @response
        p @response.save!
        if @response.save
            p "HHHORAYYYY_____________________"
        else
            p "BOOOOO_________________________"
        end
        redirect_to @response
    end

    private
    def response_params
        params.require(:response).permit(:number_of_guests, :guest1_first_name, :guest1_surname, :guest1_rsvp, :guest1_dietary_requirements, :guest1_diet_details, :guest2_first_name, :guest2_surname, :guest2_rsvp, :guest2_dietary_requirements, :guest2_diet_details, :guest3_first_name, :guest3_surname, :guest3_rsvp, :guest3_dietary_requirements, :guest3_diet_details, :guest4_first_name, :guest4_surname, :guest4_rsvp, :guest4_dietary_requirements, :guest4_diet_details )
    end


end
