class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.string :name, null: false
      t.string :file_name, null: false
      t.integer :keyboard_number, null: false, index: { unique: true }

      t.timestamps
    end
  end
end
