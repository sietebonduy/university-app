class RemoveHasDoctorateColumnFromTeachers < ActiveRecord::Migration[6.1]
  def change
    remove_column :teachers, :has_doctorate
  end
end
