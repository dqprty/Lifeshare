class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :content
      t.string :image
      t.integer :user_id, foreign_key: true
      t.integer :calendar_id, foreign_key: true
      t.timestamps
    end
  end
end
