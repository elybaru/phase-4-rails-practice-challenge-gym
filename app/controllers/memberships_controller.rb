class MembershipsController < ApplicationController
    validates 

    def create
        membership = Membership.create!(membership_params)

    end

    private

    def membership_params
        params.permit(:gym_id, :client_id, :charge)
    end


end
