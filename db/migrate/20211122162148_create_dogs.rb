class CreateDogs < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :size
      t.integer :age
      t.text :description
      t.integer :likes
      t.string :gender
      t.string :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
