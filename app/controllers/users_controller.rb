
class UsersController < ApplicationController
 # before_action :set_user, only: [:index ,:show, :update]
 rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
 rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity_response

 # GET /users
  def index
        render json: User.all.then(&paginate), status: :ok
  end

  # GET /users/1
  def show
    user = find_user
    render json: user
  end

  # POST

  def create 

    @user = User.create!(user_params)
    if @user.save and @user.valid?
      session[:user_id] = @user.id
      render json: @user, status: :created
      UserNotifierMailer.send_signup_email(@user).deliver

    else
      render json: {errors: [@user.errors.full_messages] }, status: :unprocessable_entity
    end
end


  # PATCH/PUT /users/1
  
    def update
      user = find_user
      user.update!(user_params)
        render json:user, status: :accepted
    end

    # DELETE /users/1
    
    def destroy
      user = find_user
      user.destroy
        head :no_content
    end

    def records
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
          :user_type,
          :password,
          :telephone_number,
         :skills
          #:gender
          # :age,
          # :city,
          # :country_name,
          # :region_id,
          # :marital_status,
          # :employment_status,
          # :monthly_income,
          # :access_to_safe_water,
          # :access_to_electricity,
          # :medical_insurance,
          # :education_level,
          # :religion,
          # :is_disabled,
        )
      end

    def render_not_found_response
        render json: {error: "User not found"}, status: :not_found
    end

    def unprocessable_entity_response(invalid)
        render json: {error: invalid.record.errors}, status: :unprocessable_entity
    end

end



# # Only allow a trusted parameter "white list" through.
# def more_user_params
#   params.permit(
#     :full_name,
#     :email,
#     :gender,
#     :age,
#     :city,
#     :country_name,
#     :region_id,
#     :marital_status,
#     :employment_status,
#     :monthly_income,
#     :access_to_safe_water,
#     :access_to_electricity,
#     :medical_insurance,
#     :education_level,
#     :user_type,
#     :religion,
#     :is_disabled,
#     :password,
# :telephone_number,
# :skills)
# end
