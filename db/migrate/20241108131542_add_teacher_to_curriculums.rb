class AddTeacherToCurriculums < ActiveRecord::Migration[6.1]
  def change
    add_reference :curriculums, :teacher, foreign_key: true
  end
end
