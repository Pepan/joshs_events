class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.integer :score_summary, default: 0

      t.timestamps
    end
  end
end
