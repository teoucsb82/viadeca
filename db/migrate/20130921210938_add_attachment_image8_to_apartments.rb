class AddAttachmentImage8ToApartments < ActiveRecord::Migration
  def self.up
    change_table :apartments do |t|
      t.attachment :image8
    end
  end

  def self.down
    drop_attached_file :apartments, :image8
  end
end
