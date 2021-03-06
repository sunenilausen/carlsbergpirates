class AddRolesToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :parent, :boolean, default: false
    add_column :users, :volunteer, :boolean, default: false
    add_column :users, :student, :boolean, default: false
    add_column :users, :admin, :boolean, default: false
  end
end
