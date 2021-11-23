class AddBreedToDog < ActiveRecord::Migration[6.1]
  def change
    add_column :dogs, :breed, :string
  end
end
