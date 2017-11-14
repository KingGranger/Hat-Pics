class AddAttachmentAvatarToUsers < ActiveRecord::Migration[5.1]
  def self.up
    change_table :hat_pics do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :hat_pics, :avatar
  end
end
