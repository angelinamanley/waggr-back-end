class AddAboutmeToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :aboutme, :string
  end
end
