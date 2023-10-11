class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :Full_name
      t.string :Phone_number
      t.string :Email
      t.string :password

      t.timestamps
    end
  end
end
