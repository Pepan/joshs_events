class CreateEventVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :event_votes do |t|
      t.belongs_to :event, null: false, foreign_key: true
      t.belongs_to :user, null: true, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
