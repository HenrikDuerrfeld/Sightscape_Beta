class AddFirstnameToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :firstname, :string, null: false, default: ""
    add_column :users, :lastname, :string, null: false, default: ""
    add_column :users, :age, :integer, null: false, default: ""
    add_column :users, :description, :text, null: false, default: ""
    add_column :users, :phonenumber, :integer, null: false, default: ""
    add_column :users, :picture, :string, null: false, default: ""
  end
end
