class AddStudyToPlan < ActiveRecord::Migration
  def change
    add_column :plans, :casita2, :string
    add_column :plans, :study2, :string
    add_column :plans, :court2, :string
    add_column :plans, :style, :string
    add_column :plans, :garage_loc, :string
  end
end
