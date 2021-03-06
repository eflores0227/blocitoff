class ItemsController < ApplicationController

  def create
    current_user.items << Item.create(name: params[:item][:name])
    redirect_to current_user
  end

  def destroy
    Item.find(params[:id]).delete
    redirect_to current_user
  end

end
