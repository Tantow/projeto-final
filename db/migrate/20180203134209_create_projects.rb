class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.datetime :deadline
      t.string :pmo
      t.string :manager

      t.timestamps
    end
  end
end
