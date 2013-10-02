class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.integer :bedrooms
      t.integer :sqfoot
      t.integer :levels
      t.integer :bathrooms
      t.decimal :price
      t.string :name
      t.integer :half_bath
      t.integer :living
      t.string :suite
      t.string :stories
      t.integer :dining
      t.string :view
      t.attachment :drawing_1
      t.attachment :drawing_2
      t.attachment :elevation

      t.timestamps
    end
  end
end
