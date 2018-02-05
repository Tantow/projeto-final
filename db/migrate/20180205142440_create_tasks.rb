class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :content
      t.boolean :done

      t.timestamps
    end
  end
end
