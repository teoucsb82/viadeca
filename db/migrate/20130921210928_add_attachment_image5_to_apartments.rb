class AddAttachmentImage5ToApartments < ActiveRecord::Migration
  def self.up
    change_table :apartments do |t|
      t.attachment :image5
    end
  end

  def self.down
    drop_attached_file :apartments, :image5
  end
end
