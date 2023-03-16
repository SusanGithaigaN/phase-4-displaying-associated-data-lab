class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :user_not_found
    def show
        user_item = User.find(params[:id])
        render json: user_item, include: :items
    end

    private

    def user_not_found
        render json: { error: "User not found" }, status: :not_found
    end

end
