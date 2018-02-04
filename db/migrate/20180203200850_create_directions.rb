class CreateDirections < ActiveRecord::Migration[5.1]
  def change
    create_table :directions do |t|
      t.string :name_d
      t.string :pmo
      t.string :office

      t.timestamps
    end
  end
end
