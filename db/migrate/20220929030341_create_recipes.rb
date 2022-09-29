class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :instructions
      t.integer :prep_minutes
      t.integer :cook_minutes

      t.timestamps
    end
  end
end
