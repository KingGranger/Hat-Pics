class CreateHatPics < ActiveRecord::Migration[5.1]
  def change
    create_table :hat_pics do |t|


      t.timestamps
    end
  end
end
