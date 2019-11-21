class RemoveActivityLevelFrom < ActiveRecord::Migration[6.0]
  def change
    remove_column :dogs, :activity_level, :string
    remove_column :dogs, :photos, :string


  end
end
