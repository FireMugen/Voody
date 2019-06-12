class AddIndexToRecipes < ActiveRecord::Migration[5.2]
  def change
		add_index :recipes, [:user_id, :created_at]
  end
end
