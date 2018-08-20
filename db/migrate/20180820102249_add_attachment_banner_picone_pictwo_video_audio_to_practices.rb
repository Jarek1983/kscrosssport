class AddAttachmentBannerPiconePictwoVideoAudioToPractices < ActiveRecord::Migration[5.2]
  def self.up
    change_table :practices do |t|
      t.attachment :banner
      t.attachment :picone
      t.attachment :pictwo
      t.attachment :video
      t.attachment :audio
    end
  end

  def self.down
    remove_attachment :practices, :banner
    remove_attachment :practices, :picone
    remove_attachment :practices, :pictwo
    remove_attachment :practices, :video
    remove_attachment :practices, :audio
  end
end
