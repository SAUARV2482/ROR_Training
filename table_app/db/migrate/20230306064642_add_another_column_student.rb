class AddAnotherColumnStudent < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :email, :string
    add_column :students, :term_start_date, :date
    add_column :students, :term_end_date, :date
  end
end
