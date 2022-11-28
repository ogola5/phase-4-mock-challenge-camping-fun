class ActivitiesController < ApplicationController
    def index
        activities = Camper.all
        render json: activities
    end
    def destroy
        activities = Activity.find
        activities.destroy
        head :no_content
    end
end
