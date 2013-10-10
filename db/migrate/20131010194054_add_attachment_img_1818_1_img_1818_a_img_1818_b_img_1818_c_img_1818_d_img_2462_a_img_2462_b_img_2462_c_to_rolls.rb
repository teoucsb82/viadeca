class AddAttachmentImg18181Img1818AImg1818BImg1818CImg1818DImg2462AImg2462BImg2462CToRolls < ActiveRecord::Migration
  def self.up
    change_table :rolls do |t|
      t.attachment :img_1818_1
      t.attachment :img_1818_a
      t.attachment :img_1818_b
      t.attachment :img_1818_c
      t.attachment :img_1818_d
      t.attachment :img_2462_a
      t.attachment :img_2462_b
      t.attachment :img_2462_c
    end
  end

  def self.down
    drop_attached_file :rolls, :img_1818_1
    drop_attached_file :rolls, :img_1818_a
    drop_attached_file :rolls, :img_1818_b
    drop_attached_file :rolls, :img_1818_c
    drop_attached_file :rolls, :img_1818_d
    drop_attached_file :rolls, :img_2462_a
    drop_attached_file :rolls, :img_2462_b
    drop_attached_file :rolls, :img_2462_c
  end
end
