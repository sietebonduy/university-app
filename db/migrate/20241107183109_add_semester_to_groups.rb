class AddSemesterToGroups < ActiveRecord::Migration[6.1]
  def change
    add_column :groups, :semester, :integer
  end
end
