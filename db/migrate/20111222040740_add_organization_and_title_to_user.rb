class AddOrganizationAndTitleToUser < ActiveRecord::Migration
  def change
    add_column :users, :organization, :string
    add_column :users, :title, :string
  end
end
