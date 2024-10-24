class AddPassDateToTheses < ActiveRecord::Migration[6.1]
  def change
    add_column :theses, :pass_date, :date
  end
end
