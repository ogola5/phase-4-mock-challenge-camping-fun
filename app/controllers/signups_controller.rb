class SignupsController < ApplicationController
    def index
        signups =Signup.all
        render json: signups
    end
    def create
        
    end
end
