class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.text :description
      t.datetime :start
      t.datetime :deadline
      t.boolean :status
      t.string :title

      t.timestamps
    end
  end
end
