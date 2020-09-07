class AddAdminToAuthor < ActiveRecord::Migration[6.0]
  def change
    add_column :authors, :admin, :boolean, default: false
  end
end
