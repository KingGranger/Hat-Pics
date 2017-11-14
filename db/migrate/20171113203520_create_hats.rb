class CreateHats < ActiveRecord::Migration[5.1]
  def change
    create_table :hats do |t|
      t.string :brand
      t.string :category
      t.string :color
      t.integer :user_id
      t.string :name
      t.timestamps
    end
  end
end
