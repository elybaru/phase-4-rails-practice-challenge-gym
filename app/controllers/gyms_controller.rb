class GymsController < ApplicationController

    def show
        gym = find_gym
        render json: gym, status: :created
    end

    def destroy
        gym = find_gym
        if gym 
            gym.destroy
            head :no_content 
            render json: {}
          else
            render json: { error: "Gym not found" }, status: :not_found
          end
    end

    private

    def find_gym
        Gym.find(params[:id])
    end
    
end
