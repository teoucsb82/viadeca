class AddAttachmentImage6ToApartments < ActiveRecord::Migration
  def self.up
    change_table :apartments do |t|
      t.attachment :image6
    end
  end

  def self.down
    drop_attached_file :apartments, :image6
  end
end
