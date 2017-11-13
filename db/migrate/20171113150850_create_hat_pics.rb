class CreateHatPics < ActiveRecord::Migration[5.1]
  def change
    create_table :hat_pics do |t|
      t.string :picture
      t.integer :hat_id

      t.timestamps
    end
  end
end
