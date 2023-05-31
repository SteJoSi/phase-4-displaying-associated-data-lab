class ItemsController < ApplicationController
  
    def index 
        item = Item.all.order(username: :desc)
        render json: item, include: :user
    end

end
