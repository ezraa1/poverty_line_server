class DonationsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity_response

    def index
        render json: Donation.all
    end

    def show
        donation = find_donation
        render json: donation
    end

    def create
        donation = Donation.create!(donation_params)
        render json: donation, status: :created
    end

    def update
        donation = find_donation
        donation.update(donation_params)
        render json: donation, status: :accepted
    end

    def destroy
        donation = find_donation
        donation.destroy
        head :no_content
    end


    private

    def find_donation
        Donation.find(params[:id])
    end

    def donation_params
        params.permit(
            :donation_name
            :description
            :donation_amount
            :country_code
        )
    end

    def render_not_found_response
        render json: {error: "Donation not found"}, status: :not_found
    end

    def unprocessable_entity_response(invalid)
        render json: {error: invalid.record.errors}, status: :unprocessable_entity
    end
end

