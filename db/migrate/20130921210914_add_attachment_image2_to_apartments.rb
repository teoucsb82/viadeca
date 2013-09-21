class AddAttachmentImage2ToApartments < ActiveRecord::Migration
  def self.up
    change_table :apartments do |t|
      t.attachment :image2
    end
  end

  def self.down
    drop_attached_file :apartments, :image2
  end
end
