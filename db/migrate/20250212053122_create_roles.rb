class CreateRoles < ActiveRecord::Migration[7.1]
  def change
    create_table :roles do |t|
      t.references :movie, foreign_key: true  # Foreign key reference to movies
      t.references :actor, foreign_key: true  # Foreign key reference to actors
      t.string "character_name"
      t.timestamps
    end
  end
end
