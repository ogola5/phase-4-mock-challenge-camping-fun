class SignupsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound,with: :render_not_found_response
    def index
        signups =Signup.all
        render json: signups
    end
    def create
        signups = Signup.create(params[:id])
        render json:signups
    end
    private
    def signups
        params.permit(:camper_id, :activity_id)
    end
    def render_not_found_response
        render json:{error: "validation errors"}, status: 404
    end
end
