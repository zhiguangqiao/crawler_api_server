class CreateCrawlers < ActiveRecord::Migration[5.2]
  def change
    create_table :crawlers do |t|
      t.string :shell_command
      t.string :name
      t.string :desc

      t.timestamps
    end
  end
end
