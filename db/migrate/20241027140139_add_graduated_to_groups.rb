class AddGraduatedToGroups < ActiveRecord::Migration[6.1]
  def change
    add_column :groups, :graduated, :boolean, default: false
  end
end
