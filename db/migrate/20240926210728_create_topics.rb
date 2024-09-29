class CreateTopics < ActiveRecord::Migration[6.1]
  def change
    create_table :topics do |t|
      t.string :name
      t.references :teacher, foreign_key: true
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
