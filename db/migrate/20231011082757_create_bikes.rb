class CreateBikes < ActiveRecord::Migration[7.0]
  def change
    create_table :bikes do |t|
      t.string :name
      t.string :model
      t.text :specifications
      t.integer :seller_contact
      t.string :photos
      t.string :type

      t.timestamps
    end
  end
end
