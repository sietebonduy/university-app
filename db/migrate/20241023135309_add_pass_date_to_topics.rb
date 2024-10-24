class AddPassDateToTopics < ActiveRecord::Migration[6.1]
  def change
    add_column :topics, :pass_date, :date
  end
end
