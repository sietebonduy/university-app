class CreateGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :groups do |t|
      t.string :name
      t.references :faculty, foreign_key: true
      t.integer :enrollment_year

      t.timestamps
    end
  end
end
