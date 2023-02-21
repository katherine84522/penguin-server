class PenguinsController < ApplicationController


    def index
        render json: Penguin.all
    end

    def create
        penguin = Penguin.create(bodyacc: params[:bodyacc], headacc: params[:headacc],headColor: params[:headColor], bodyColor: params[:bodyColor], mouthColor: params[:mouthColor])
        render json: penguin
    end

    def destroy
        penguin = Penguin.find_by(id: params[:id])
        penguin.destroy
        render json: penguin
    end

end
