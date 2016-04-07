class CreateComputers < ActiveRecord::Migration
  def change
    create_table :computers do |t|
      t.string :make
      t.integer :ram

      t.timestamps null: false
    end
  end
end
