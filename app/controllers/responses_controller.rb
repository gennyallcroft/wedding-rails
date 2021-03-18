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
        @response.update(number_of_guests: params[:response][:number_of_guests])
        @response.update(guest1_rsvp: params[:response][:guest1_rsvp], guest1_first_name: params[:response][:guest1_first_name], guest1_surname: params[:response][:guest1_surname], guest1_dietary_requirements: params[:response][:guest1_dietary_requirements], guest1_diet_details: params[:response][:guest1_diet_details] )
        @response.update(guest2_rsvp: params[:response][:guest2_rsvp], guest2_first_name: params[:response][:guest2_first_name], guest2_surname: params[:response][:guest2_surname], guest2_dietary_requirements: params[:response][:guest2_dietary_requirements], guest2_diet_details: params[:response][:guest2_diet_details] )
        @response.update(guest3_rsvp: params[:response][:guest3_rsvp], guest3_first_name: params[:response][:guest3_first_name], guest3_surname: params[:response][:guest3_surname], guest3_dietary_requirements: params[:response][:guest3_dietary_requirements], guest3_diet_details: params[:response][:guest3_diet_details] )
        @response.update(guest4_rsvp: params[:response][:guest4_rsvp], guest4_first_name: params[:response][:guest4_first_name], guest4_surname: params[:response][:guest4_surname], guest4_dietary_requirements: params[:response][:guest4_dietary_requirements], guest4_diet_details: params[:response][:guest4_diet_details] )
        @response.guest1_first_name = @response.guest1_first_name.capitalize
        @response.guest1_surname = @response.guest1_surname.capitalize
        @response.guest1_diet_details = @response.guest1_diet_details.capitalize
        @response.guest2_first_name = @response.guest2_first_name.capitalize
        @response.guest2_surname = @response.guest2_surname.capitalize
        @response.guest2_diet_details = @response.guest2_diet_details.capitalize
        @response.guest3_first_name = @response.guest3_first_name.capitalize
        @response.guest3_surname = @response.guest3_surname.capitalize
        @response.guest3_diet_details = @response.guest3_diet_details.capitalize
        @response.guest4_first_name = @response.guest4_first_name.capitalize
        @response.guest4_surname = @response.guest4_surname.capitalize
        @response.guest4_diet_details = @response.guest4_diet_details.capitalize

        
        if @response.number_of_guests === 1
            @response.update(guest2_rsvp: nil, guest2_first_name: nil, guest2_surname: nil, guest2_dietary_requirements: nil, guest2_diet_details: nil )
            @response.update(guest3_rsvp: nil, guest3_first_name: nil, guest3_surname: nil, guest3_dietary_requirements: nil, guest3_diet_details: nil )
            @response.update(guest4_rsvp: nil, guest4_first_name: nil, guest4_surname: nil, guest4_dietary_requirements: nil, guest4_diet_details: nil)
        elsif @response.number_of_guests === 2
            @response.update(guest3_rsvp: nil, guest3_first_name: nil, guest3_surname: nil, guest3_dietary_requirements: nil, guest3_diet_details: nil )
            @response.update(guest4_rsvp: nil, guest4_first_name: nil, guest4_surname: nil, guest4_dietary_requirements: nil, guest4_diet_details: nil)
        elsif @response.number_of_guests === 3
            @response.update(guest4_rsvp: nil, guest4_first_name: nil, guest4_surname: nil, guest4_dietary_requirements: nil, guest4_diet_details: nil)
        end
        

        @response.save

        if @response.save
            p "saving response, hooray!"
            redirect_to @response
          else
            render '/responses/new'
        end

    end

    def create
        @response = Response.new(response_params.merge(user_id: current_user.id))
        
        @response.guest1_first_name = @response.guest1_first_name.capitalize
        @response.guest1_surname = @response.guest1_surname.capitalize
        @response.guest1_diet_details = @response.guest1_diet_details.capitalize
        @response.guest2_first_name = @response.guest2_first_name.capitalize
        @response.guest2_surname = @response.guest2_surname.capitalize
        @response.guest2_diet_details = @response.guest2_diet_details.capitalize
        @response.guest3_first_name = @response.guest3_first_name.capitalize
        @response.guest3_surname = @response.guest3_surname.capitalize
        @response.guest3_diet_details = @response.guest3_diet_details.capitalize
        @response.guest4_first_name = @response.guest4_first_name.capitalize
        @response.guest4_surname = @response.guest4_surname.capitalize
        @response.guest4_diet_details = @response.guest4_diet_details.capitalize

        if @response.number_of_guests === 1
            @response.update(guest2_rsvp: nil, guest2_first_name: nil, guest2_surname: nil, guest2_dietary_requirements: nil, guest2_diet_details: nil )
            @response.update(guest3_rsvp: nil, guest3_first_name: nil, guest3_surname: nil, guest3_dietary_requirements: nil, guest3_diet_details: nil )
            @response.update(guest4_rsvp: nil, guest4_first_name: nil, guest4_surname: nil, guest4_dietary_requirements: nil, guest4_diet_details: nil)
        elsif @response.number_of_guests === 2
            @response.update(guest3_rsvp: nil, guest3_first_name: nil, guest3_surname: nil, guest3_dietary_requirements: nil, guest3_diet_details: nil )
            @response.update(guest4_rsvp: nil, guest4_first_name: nil, guest4_surname: nil, guest4_dietary_requirements: nil, guest4_diet_details: nil)
        elsif @response.number_of_guests === 3
            @response.update(guest4_rsvp: nil, guest4_first_name: nil, guest4_surname: nil, guest4_dietary_requirements: nil, guest4_diet_details: nil)
        end

        @response.save

        if @response.save
            p "saving response, hooray!"
            redirect_to @response
          else
            render '/responses/new'
        end
    end

    private
    def response_params
        params.require(:response).permit(:number_of_guests, :guest1_first_name, :guest1_surname, :guest1_rsvp, :guest1_dietary_requirements, :guest1_diet_details, :guest2_first_name, :guest2_surname, :guest2_rsvp, :guest2_dietary_requirements, :guest2_diet_details, :guest3_first_name, :guest3_surname, :guest3_rsvp, :guest3_dietary_requirements, :guest3_diet_details, :guest4_first_name, :guest4_surname, :guest4_rsvp, :guest4_dietary_requirements, :guest4_diet_details )
    end


end
