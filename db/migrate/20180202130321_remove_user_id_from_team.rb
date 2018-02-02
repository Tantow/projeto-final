class RemoveUserIdFromTeam < ActiveRecord::Migration[5.1]
  def change
    remove_reference :teams, :user_id, foreign_key: true
  end
end
