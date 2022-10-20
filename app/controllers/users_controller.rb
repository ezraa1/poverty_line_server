
class UsersController < ApplicationController
  #  before_action :set_user, only: [:show, :update, :destroy]
  # GET /users
    def index
      @users = User.all
         render json: @users
      end

  # GET /users/1
    def show
      render json: @user
    end
  # POST /users
    def create
      @user = User.new(user_params)
  if @user.save
        render json: @user, status: :created, location: @user
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end
  # PATCH/PUT /users/1
    def update
      if @user.update(user_params)
        render json: @user
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end
 
  private
      # Use callbacks to share common setup or constraints between actions.
      def set_user
        @user = User.find(params[:id])
      end
  # Only allow a trusted parameter "white list" through.
      def user_params
        params.require(:user).permit(
          :full_name,
          :email,
          :gender,
          :age,
          :city,
          :country_name,
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
          :password_digest)
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
  #    :password_digest)
# end
