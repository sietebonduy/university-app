class AddKindtoTeachers < ActiveRecord::Migration[6.1]
  def change
    add_column :teachers, :kind, :integer, default: 0
  end
end
