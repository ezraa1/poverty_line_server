class RegionsController < ApplicationController

    def index
        @region = Region.all
        render json: @region
    end

    def show
        region = find_region
        render json: region, status: :ok
    end

    def update
        region = Region.find_by(id: params [:id])
        recipe.update!(recipe_params)
        render json: region

    end

    def destroy
        region = Region.find_by(id: params [:id])
        region.destroy
        head :no_content
    end

    private

    def find_region
        Region.find_by(id: params[:id])
    end

    def region_params
        params.permit(:sub_region, :sub_region_code, :country_name, :country_code, :city, :city_reporting_level)
    end

    def render_not_found_response
        render json: {error: "Region not found"}, status: :not_found
    end
end
