class CreateSchedule < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.references :discipline, null: false, foreign_key: true, index: true
      t.references :teacher, null: false, foreign_key: true, index: true
      t.references :group, null: false, foreign_key: true, index: true
      t.references :class_type, null: false, foreign_key: true, index: true
      t.datetime :start_time, null: false
      t.timestamps
    end
  end
end
