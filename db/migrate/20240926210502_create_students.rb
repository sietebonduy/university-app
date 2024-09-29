class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.date :birth_date
      t.boolean :has_children
      t.decimal :scholarship_amount, precision: 10, scale: 2
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
