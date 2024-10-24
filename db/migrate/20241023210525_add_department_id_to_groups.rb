class AddDepartmentIdToGroups < ActiveRecord::Migration[6.1]
  def change
    add_reference :groups, :department, foreign_key: true
  end
end
