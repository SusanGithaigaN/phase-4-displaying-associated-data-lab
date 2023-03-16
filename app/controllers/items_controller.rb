class ItemsController < ApplicationController
    def index
        items = Item.all.order(user_id: :desc)
        render json: items, include: :user
    end
end
