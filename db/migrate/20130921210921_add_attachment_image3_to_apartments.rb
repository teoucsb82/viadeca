class AddAttachmentImage3ToApartments < ActiveRecord::Migration
  def self.up
    change_table :apartments do |t|
      t.attachment :image3
    end
  end

  def self.down
    drop_attached_file :apartments, :image3
  end
end
