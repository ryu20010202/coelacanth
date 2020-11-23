class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|

      t.string :drink
      t.string :pancake
      t.string :parfait
      t.string :cream
      t.string :plate
      t.string :monaka
      t.string :price, null: false
      t.timestamps
    end
  end
end
