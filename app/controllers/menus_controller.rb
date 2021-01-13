class MenusController < ApplicationController
   def index
      @menus = Menu.includes(:user).order("created_at DESC")
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
      params.require(:menu).permit(:sun_making,:mon_making,:tue_making,:wed_making,:thu_making,:fri_making,:sat_making,:sokuseki_id,:sokuseki_mon_id,:sokuseki_tue_id,:sokuseki_wed_id,:sokuseki_thu_id,:sokuseki_fri_id,:sokuseki_sat_id).merge(user_id: current_user.id)
   end
end
