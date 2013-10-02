class AddAttachmentToPlan < ActiveRecord::Migration
  def change
    add_attachment :plans, :drawing_1
    add_attachment :plans, :drawing_2
    add_attachment :plans, :elevation
  end
end
