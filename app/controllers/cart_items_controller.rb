class CartItemsController < ApplicationController


    def index
        render json: CartItem.all
    end

    def create
        item = CartItem.create(bodyacc: params[:bodyacc], headacc: params[:headacc],headColor: params[:headColor], bodyColor: params[:bodyColor], mouthColor: params[:mouthColor])
        render json: item
    end

    def destroy
        item = CartItem.find_by(id: params[:id])
        item.destroy
        render json: item
    end

    def show
        item = CartItem.find_by(id: params[:id])
        render json: item
    end
end
