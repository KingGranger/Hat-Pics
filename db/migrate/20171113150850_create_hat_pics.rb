class CreateHatPics < ActiveRecord::Migration[5.1]
  def change
    create_table :hat_pics do |t|
      t.string :picture
      t.integer :uploader_id
      t.string :brand
      t.string :type
      t.string :color

      t.timestamps
    end
  end
end
