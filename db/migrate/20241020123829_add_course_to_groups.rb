class AddCourseToGroups < ActiveRecord::Migration[6.1]
  def change
    add_column :groups, :course, :integer
  end
end
