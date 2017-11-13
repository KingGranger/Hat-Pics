class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.integer :hat_pic_id
      t.integer :user_id
      t.integer :score

      t.timestamps
    end
  end
end
