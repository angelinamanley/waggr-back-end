class RemoveTimeAndDateFromMeetup < ActiveRecord::Migration[6.0]
  def change

    remove_column :meetups, :date, :string

    remove_column :meetups, :time, :string
  end
end
