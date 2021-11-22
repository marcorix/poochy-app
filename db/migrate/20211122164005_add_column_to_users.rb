class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :owner, :boolean
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :poochies, :integer
  end
end
