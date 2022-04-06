class Membership < ApplicationRecord
  belongs_to :gym
  belongs_to :client

  validate :unique_membership

  def unique_membership
    memberships = Membership.all
    if memberships.find_by(client_id: self.client_id, gym_id: self.gym_id)
      errors.add(:gym_id, "Users can't have multiple memberships to the same gym")
    end
  #   if self.client_id == memberships.find_by(client_id: params[:client_id]) && self.gym_id == memberships.find_by(gym_id: params[:gym_id]) 
  #     errors.add(:gym_id, "Users can't have multiple memberships to the same gym")
  #  end
  end
end
