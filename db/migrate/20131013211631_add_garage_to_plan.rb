class AddGarageToPlan < ActiveRecord::Migration
  def change
    add_column :plans, :garage, :integer
  end
end
