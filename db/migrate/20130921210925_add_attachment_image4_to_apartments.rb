class AddAttachmentImage4ToApartments < ActiveRecord::Migration
  def self.up
    change_table :apartments do |t|
      t.attachment :image4
    end
  end

  def self.down
    drop_attached_file :apartments, :image4
  end
end
