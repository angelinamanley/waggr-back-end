class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.string :breed
      t.date :birthday
      t.string :photos, array: true, default: [] 
      t.string :gender
      t.string :activity_level
      t.string :bio

      t.timestamps
    end
  end
end
