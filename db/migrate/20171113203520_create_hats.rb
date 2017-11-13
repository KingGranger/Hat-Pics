class CreateHats < ActiveRecord::Migration[5.1]
  def change
    create_table :hats do |t|
      t.string :name
      t.text :description
      t.integer :user_id
      t.timestamps
    end
  end
end
