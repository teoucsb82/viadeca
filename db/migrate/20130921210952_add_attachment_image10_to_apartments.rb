class AddAttachmentImage10ToApartments < ActiveRecord::Migration
  def self.up
    change_table :apartments do |t|
      t.attachment :image10
    end
  end

  def self.down
    drop_attached_file :apartments, :image10
  end
end
