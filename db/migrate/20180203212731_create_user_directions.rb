class CreateUserDirections < ActiveRecord::Migration[5.1]
  def change
    create_table :user_directions do |t|
      t.references :users, foreign_key: true
      t.references :teams, foreign_key: true
      t.references :full_name, foreign_key: true

      t.timestamps
    end
  end
end
