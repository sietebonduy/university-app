class CreateCurriculums < ActiveRecord::Migration[6.1]
  def change
    create_table :curriculums do |t|
      t.references :discipline, foreign_key: true
      t.references :group, foreign_key: true
      t.integer :semester
      t.integer :hours
      t.string :class_type
      t.string :control_form

      t.timestamps
    end
  end
end
