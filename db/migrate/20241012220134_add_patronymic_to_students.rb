class AddPatronymicToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :patronymic, :string
  end
end
