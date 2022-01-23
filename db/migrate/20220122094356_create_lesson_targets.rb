class CreateLessonTargets < ActiveRecord::Migration[7.0]
  def change
    create_table :lesson_targets do |t|
      t.references :lesson, null: false, foreign_key: true
      t.references :note, null: false, foreign_key: true

      t.timestamps
    end

    add_index(:lesson_targets, [:lesson_id, :note_id], unique: true)
  end
end
