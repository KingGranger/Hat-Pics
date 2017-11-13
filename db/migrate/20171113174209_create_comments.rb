class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :hat_pic_id
      t.integer :user_id

      t.timestamps
    end
  end
end
