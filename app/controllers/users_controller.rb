class UsersController < ApplicationController
  def show
   user = User.find(params[:id])
    @name = user.name
    @menus = user.menus
  end

  def destroy
   @menu = Menu.find(params[:id])
   @menu.destroy
   redirect_to root_path
  end
  
  def edit
   @menu = Menu.find(params[:id])
  end

 def update
   menu = Menu.find(params[:id])
   menu.update(menu_params)
   redirect_to action: :index
 end
 
end
