class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.string :name

      t.string :sun_menu
      t.text :sun_making
      t.string :mon_menu
      t.text :mon_making
      t.string :tue_menu
      t.text :tue_making
      t.string :wed_menu
      t.text :wed_making
      t.string :thu_menu
      t.text :thu_making
      t.string :fri_menu
      t.text :fri_making
      t.string :sat_menu
      t.text :sat_making

      t.timestamps
    end
  end
end
