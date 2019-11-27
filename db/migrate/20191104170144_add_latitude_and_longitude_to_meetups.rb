class AddLatitudeAndLongitudeToMeetups < ActiveRecord::Migration[6.0]
  def change
    add_column :meetups, :latitude, :float
    add_column :meetups, :longitude, :float
  end
end
