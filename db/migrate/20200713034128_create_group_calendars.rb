class CreateGroupCalendars < ActiveRecord::Migration[6.0]
  def change
    create_table :group_calendars do |t|
      t.references :group, foreign_key: true
      t.references :calendar, foreign_key: true
      t.timestamps
    end
  end
end
