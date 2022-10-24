class SessionsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
   
    #Signup session
    def create_account
        user = User.create!(user_params)
        session[:user_id] ||= user.id
        session[:user_type] ||= user.user_type
        render json: user
    end

    #auto login
    def auto_login
        user = User.find(session[:user_id])
        render json: user, status: :created
    end

    #login session
    def login
        user = User.find_by(email: params[:email])
        if user &.authenticate(params[:password])
            session[:user_id] ||= user.id
     
            session[:user_type] ||= user.user_type
            render json: user, status: :created
        else
            render json: { errors: ["Invalid email or Password"]}, status: :unauthorized
        end
    end

    def logout
        session.delete :user_id
        session.delete :user_type
        head :no_content
        # user = User.find_by(id: session[:user_id])
        # if user
        #     session.delete :user_id
        #     head :no_content
        # else
        #     render json: {errors: ["Not authorized"]}, status: :unauthorized
        # end
    end

    private

    def user_params
        params.permit(:full_name, :email, :password, :user_type)
    end

    def render_unprocessable_entity_response(e)
        render json: {errors: e.record.errors.full_messages}, status: :unprocessable_entity
    end
end
