class RemoveCategoryFromTeachers < ActiveRecord::Migration[6.1]
  def change
    remove_column :teachers, :category, :string
  end
end
