class AddPassDateToExams < ActiveRecord::Migration[6.1]
  def change
    add_column :exams, :pass_date, :date
  end
end
