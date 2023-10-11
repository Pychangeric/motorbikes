class AddAdminAttributesToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :id_number, :string
    add_column :users, :phone_number, :string
    add_column :users, :full_names, :string
    add_column :users, :DOB, :date
    add_column :users, :location, :string
  end
end
