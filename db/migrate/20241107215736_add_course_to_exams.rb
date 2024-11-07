class AddCourseToExams < ActiveRecord::Migration[6.1]
  def change
    add_column :exams, :course, :integer
  end
end
