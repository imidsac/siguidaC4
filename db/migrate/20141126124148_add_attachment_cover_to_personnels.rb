class AddAttachmentCoverToPersonnels < ActiveRecord::Migration
  def self.up
    change_table :personnels do |t|
      t.attachment :cover
    end
  end

  def self.down
    remove_attachment :personnels, :cover
  end
end
