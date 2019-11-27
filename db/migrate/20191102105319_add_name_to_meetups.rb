class AddNameToMeetups < ActiveRecord::Migration[6.0]
  def change
    add_column :meetups, :name, :string
  end
end
