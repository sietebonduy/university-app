class AddDepartmentToDisciplines < ActiveRecord::Migration[6.1]
  def change
    add_reference :disciplines, :department, foreign_key: true
  end
end
