class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :image
      t.string :ingredients
      t.integer :user_id

      t.timestamps
    end
  end
end
