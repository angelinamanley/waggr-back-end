class CreateMeetups < ActiveRecord::Migration[6.0]
  def change
    create_table :meetups do |t|
      t.date :date
      t.time :time
      t.string :location
      t.string :description

      t.timestamps
    end
  end
end
