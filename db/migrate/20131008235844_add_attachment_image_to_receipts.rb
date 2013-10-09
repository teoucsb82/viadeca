class AddAttachmentImageToReceipts < ActiveRecord::Migration
  def self.up
    change_table :receipts do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :receipts, :image
  end
end
