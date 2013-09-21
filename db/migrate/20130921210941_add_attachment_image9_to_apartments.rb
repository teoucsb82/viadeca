class AddAttachmentImage9ToApartments < ActiveRecord::Migration
  def self.up
    change_table :apartments do |t|
      t.attachment :image9
    end
  end

  def self.down
    drop_attached_file :apartments, :image9
  end
end
