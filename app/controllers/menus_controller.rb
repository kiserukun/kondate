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

   def show
      @menu = Menu.find(params[:id])
   end

   def destroy
      menu = Menu.find(menus[:id])
      menu.destroy
   end

   def edit
      @menu = Menu.find(params[:id])
   end

   def update
      menu = Menu.find(params[:id])
      menu.update(menu_params)
      redirect_to action: :index
   end

   private
   def menu_params
      params.require(:menu).permit(:name,:sun_menu,:sun_making,:mon_menu,:mon_making,:tue_menu,:tue_making,:wed_menu,:wed_making,:thu_menu,:thu_making,:fri_menu,:fri_making,:sat_menu,:sat_making,:sokuseki_id,:sokuseki_mon_id,:sokuseki_tue_id,:sokuseki_wed_id,:sokuseki_thu_id,:sokuseki_fri_id,:sokuseki_sat_id)
   end
end
