class AddPatronymicToTeachers < ActiveRecord::Migration[6.1]
  def change
    add_column :teachers, :patronymic, :string
  end
end
