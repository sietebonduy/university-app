class CreateTeachers < ActiveRecord::Migration[6.1]
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.date :birth_date
      t.boolean :has_children
      t.decimal :salary, precision: 10, scale: 2
      t.string :category
      t.boolean :has_phd
      t.boolean :has_doctorate
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
