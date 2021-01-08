class MenusController < ApplicationController
   def index
      @menus = Menu.all
   end

   def new
      @menu = Menu.new
   end

   def create
      Menu.create(menu_params)
      redirect_to action: :index
   end

   private
   def menu_params
      params.require(:menu).permit(:name,:sun_menu,:sun_making,:mon_menu,:mon_making,:tue_menu,:tue_making)
   end
end
