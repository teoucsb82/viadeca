class AddAttachmentImg17231Img17232Img17233Img17234Img17235Img12411Img12412Img12413Img12414Img12415Img12416Img12417Img12418Img12419ToRolls < ActiveRecord::Migration
  def self.up
    change_table :rolls do |t|
      t.attachment :img_1723_1
      t.attachment :img_1723_2
      t.attachment :img_1723_3
      t.attachment :img_1723_4
      t.attachment :img_1723_5
      t.attachment :img_1241_1
      t.attachment :img_1241_2
      t.attachment :img_1241_3
      t.attachment :img_1241_4
      t.attachment :img_1241_5
      t.attachment :img_1241_6
      t.attachment :img_1241_7
      t.attachment :img_1241_8
      t.attachment :img_1241_9
    end
  end

  def self.down
    drop_attached_file :rolls, :img_1723_1
    drop_attached_file :rolls, :img_1723_2
    drop_attached_file :rolls, :img_1723_3
    drop_attached_file :rolls, :img_1723_4
    drop_attached_file :rolls, :img_1723_5
    drop_attached_file :rolls, :img_1241_1
    drop_attached_file :rolls, :img_1241_2
    drop_attached_file :rolls, :img_1241_3
    drop_attached_file :rolls, :img_1241_4
    drop_attached_file :rolls, :img_1241_5
    drop_attached_file :rolls, :img_1241_6
    drop_attached_file :rolls, :img_1241_7
    drop_attached_file :rolls, :img_1241_8
    drop_attached_file :rolls, :img_1241_9
  end
end
