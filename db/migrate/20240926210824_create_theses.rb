class CreateTheses < ActiveRecord::Migration[6.1]
  def change
    create_table :theses do |t|
      t.string :title
      t.references :student, foreign_key: true
      t.references :teacher, foreign_key: true

      t.timestamps
    end
  end
end
