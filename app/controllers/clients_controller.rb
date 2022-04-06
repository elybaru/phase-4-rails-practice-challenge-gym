class ClientsController < ApplicationController

    def show
        client = Client.find(params[:id])
        render json: client, status: :ok
    end
end
