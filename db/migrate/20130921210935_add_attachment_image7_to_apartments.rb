class AddAttachmentImage7ToApartments < ActiveRecord::Migration
  def self.up
    change_table :apartments do |t|
      t.attachment :image7
    end
  end

  def self.down
    drop_attached_file :apartments, :image7
  end
end
