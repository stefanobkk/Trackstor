class AddAttachmentImageToTvshows < ActiveRecord::Migration
  def self.up
    change_table :tvshows do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :tvshows, :image
  end
end
