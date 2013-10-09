class AddAttachmentDocToLeases < ActiveRecord::Migration
  def self.up
    change_table :leases do |t|
      t.attachment :doc
    end
  end

  def self.down
    drop_attached_file :leases, :doc
  end
end
