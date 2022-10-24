class ApplicationController < ActionController::API
    #checks for session and only allows authorized user else erro message
    def authorize 
        render json: {error: "Not authorized"}, status: :unauthorized unless session.include? :user_id
      end
      
    include Pagination
end
