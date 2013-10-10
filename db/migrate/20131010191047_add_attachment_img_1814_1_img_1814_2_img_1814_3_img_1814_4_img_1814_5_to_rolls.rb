class AddAttachmentImg18141Img18142Img18143Img18144Img18145ToRolls < ActiveRecord::Migration
  def self.up
    change_table :rolls do |t|
      t.attachment :img_1814_1
      t.attachment :img_1814_2
      t.attachment :img_1814_3
      t.attachment :img_1814_4
      t.attachment :img_1814_5
    end
  end

  def self.down
    drop_attached_file :rolls, :img_1814_1
    drop_attached_file :rolls, :img_1814_2
    drop_attached_file :rolls, :img_1814_3
    drop_attached_file :rolls, :img_1814_4
    drop_attached_file :rolls, :img_1814_5
  end
end
