class CreateHatPics < ActiveRecord::Migration[5.1]
  def change
    create_table :hat_pics do |t|
      t.integer :hat_id

      t.timestamps
    end
  end
end
