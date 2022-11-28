class CampersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound,with: :render_not_found_response
    def index
        campers =Camper.all
        render json: campers
    end
    
    def create
        camper = Camper.create(camper_params)
        render json: camper, status: :created
    end
    def show
        camper = Camper.find_by(params[:id])
        render json: camper
    end
    def destroy
        camper = Camper.find_by(id: params[:id])
        camper.destroy
        head :no_content
    end
    private
    def camper
        Camper.find(params[:id])
    end
    def render_not_found_response
        render json: {error:"Camper not found"}, status: :not_found
    end
    def camper_params
        params.permit(:name, :age)
    end
    
end
