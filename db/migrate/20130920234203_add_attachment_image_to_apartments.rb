class AddAttachmentImageToApartments < ActiveRecord::Migration
  def self.up
    change_table :apartments do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :apartments, :image
  end
end
