class AddTypeMenuToMenu < ActiveRecord::Migration
  def change
    add_column :menus, :type_menu, :string
  end
end
