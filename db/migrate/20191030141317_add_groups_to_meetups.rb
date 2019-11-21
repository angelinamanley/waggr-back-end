class AddGroupsToMeetups < ActiveRecord::Migration[6.0]
  def change
    add_reference :meetups, :groups, null: false, foreign_key: true
  end
end
