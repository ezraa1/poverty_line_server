
class UsersController < ApplicationController
 # before_action :set_user, only: [:index ,:show, :update]
 rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
 
 # GET /users
  def index
        render json: User.all, status: :ok
  end

  # GET /users/1
  def show
    user = find_user
    render json: user, status: :ok
  end

  # POST
  def create 
    user = User.create!(user_params)
    render json: user, status: :created
  end

  # PATCH/PUT /users/1
  
    def update
      user = find_user
      user.update(user_params)
        render json:user, status: :accepted
    end

    # DELETE /users/1
    
    def destroy
      user = find_user
      user.destroy
        head :no_content
    end


  private

 # Only allow a trusted parameter "white list" through.

      def find_user
        User.find(params[:id])
      end

      def user_params
        params.permit(
          :full_name,
          :email,
          :gender,
          :age,
          :city,
          :country_name,
          :region_id,
          :marital_status,
          :employment_status,
          :monthly_income,
          :access_to_safe_water,
          :access_to_electricity,
          :medical_insurance,
          :education_level,
          :user_type,
          :religion,
          :is_disabled,
          :password)
      end

  def render_unprocessable_entity_response(e)
        render json: {errors: e.record.errors.full_messages}, status: :unprocessable_entity
  end
  

end



# # Only allow a trusted parameter "white list" through.
# def user_params
  # params.permit(
  #    :full_name,
  #    :email,
  #    :gender,
  #    :age,
  #    :city,
  #    :country_name,
  #    :marital_status,
  #    :employment_status,
  #    :monthly_income,
  #    :access_to_safe_water,
  #    :access_to_electricity,
  #    :medical_insurance,
  #    :education_level,
  #    :user_type,
  #    :religion,
  #    :is_disabled,
  #    :password)
# end
