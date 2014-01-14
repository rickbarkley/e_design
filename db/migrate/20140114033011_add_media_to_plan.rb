class AddMediaToPlan < ActiveRecord::Migration
  def change
    add_column :plans, :media2, :string
  end
end
