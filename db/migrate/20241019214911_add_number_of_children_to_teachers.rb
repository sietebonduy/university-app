class AddNumberOfChildrenToTeachers < ActiveRecord::Migration[6.1]
  def change
    add_column :teachers, :number_of_children, :integer, default: 0
  end
end
