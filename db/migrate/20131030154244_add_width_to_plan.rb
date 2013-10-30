class AddWidthToPlan < ActiveRecord::Migration
  def change
    add_column :plans, :width, :string
    add_column :plans, :depth, :string
  end
end
