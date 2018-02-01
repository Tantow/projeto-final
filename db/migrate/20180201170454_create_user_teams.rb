class CreateUserTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :user_teams do |t|
      t.references :User, foreign_key: true
      t.references :Team, foreign_key: true

      t.timestamps
    end
  end
end
