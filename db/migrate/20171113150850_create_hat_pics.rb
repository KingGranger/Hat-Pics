class CreateHatPics < ActiveRecord::Migration[5.1]
  def change
    create_table :hat_pics do |t|
      t.string :picture
      t.belongs_to :uploader, foreign_key: true
      t.string :brand
      t.string :type
      t.string :color

      t.timestamps
    end
  end
end
