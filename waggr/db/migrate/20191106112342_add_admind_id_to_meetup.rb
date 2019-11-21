class AddAdmindIdToMeetup < ActiveRecord::Migration[6.0]
  def change
    add_column :meetups, :admin_id, :integer
  end
end
