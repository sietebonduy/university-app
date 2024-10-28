class AddTeacherToExams < ActiveRecord::Migration[6.1]
  def change
    add_reference :exams, :teacher, foreign_key: true
  end
end
