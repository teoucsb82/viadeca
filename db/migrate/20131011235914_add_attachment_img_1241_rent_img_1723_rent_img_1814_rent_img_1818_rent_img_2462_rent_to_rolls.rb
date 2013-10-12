class AddAttachmentImg1241RentImg1723RentImg1814RentImg1818RentImg2462RentToRolls < ActiveRecord::Migration
  def self.up
    change_table :rolls do |t|
      t.attachment :img_1241_rent
      t.attachment :img_1723_rent
      t.attachment :img_1814_rent
      t.attachment :img_1818_rent
      t.attachment :img_2462_rent
    end
  end

  def self.down
    drop_attached_file :rolls, :img_1241_rent
    drop_attached_file :rolls, :img_1723_rent
    drop_attached_file :rolls, :img_1814_rent
    drop_attached_file :rolls, :img_1818_rent
    drop_attached_file :rolls, :img_2462_rent
  end
end
