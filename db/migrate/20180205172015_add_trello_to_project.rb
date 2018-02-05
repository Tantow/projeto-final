class AddTrelloToProject < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :trello, :string
  end
end
