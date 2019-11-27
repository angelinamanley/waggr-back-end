class RemoveGroupsFromMeetups < ActiveRecord::Migration[6.0]
  def change
    remove_reference :meetups, :groups, null: false, foreign_key: true
  end
end
