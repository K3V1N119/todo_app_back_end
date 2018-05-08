class CreateWins < ActiveRecord::Migration
  def change
    create_table :wins do |t|
      t.string :lose

      t.timestamps null: false
    end
  end
end
