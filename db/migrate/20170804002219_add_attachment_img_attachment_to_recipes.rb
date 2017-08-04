class AddAttachmentImgAttachmentToRecipes < ActiveRecord::Migration[5.1]
  def self.up
    change_table :recipes do |t|
      t.attachment :img_attachment
    end
  end

  def self.down
    remove_attachment :recipes, :img_attachment
  end
end
