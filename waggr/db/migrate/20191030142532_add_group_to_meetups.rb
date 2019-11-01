class AddGroupToMeetups < ActiveRecord::Migration[6.0]
  def change
    add_reference :meetups, :group, null: false, foreign_key: true
  end
end
