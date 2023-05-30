class CreateAnimals < ActiveRecord::Migration[7.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.float :price_per_day
      t.string :localisation
      t.boolean :can_swim
      t.boolean :can_walk
      t.boolean :can_fly
      t.text :summary
      t.references :owner, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
