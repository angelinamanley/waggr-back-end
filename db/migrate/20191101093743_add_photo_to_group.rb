class AddPhotoToGroup < ActiveRecord::Migration[6.0]
  def change
    add_column :groups, :photo, :string
  end
end
