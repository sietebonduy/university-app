class CreateExams < ActiveRecord::Migration[6.1]
  def change
    create_table :exams do |t|
      t.references :student, foreign_key: true
      t.references :discipline, foreign_key: true
      t.integer :grade
      t.integer :semester

      t.timestamps
    end
  end
end
