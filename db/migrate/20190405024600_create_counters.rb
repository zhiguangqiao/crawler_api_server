class CreateCounters < ActiveRecord::Migration[5.2]
  def change
    create_table :counters do |t|
      t.integer :count
      t.integer :crawler_id

      t.timestamps
    end
  end
end
