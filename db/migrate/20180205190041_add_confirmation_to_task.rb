class AddConfirmationToTask < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :confirmation, :boolean
  end
end
