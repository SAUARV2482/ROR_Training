class RemoveAnotherFromStudent < ActiveRecord::Migration[7.0]
  def change
    remove_column :students, :phonenumber, :integer
    remove_column :students, :city, :integer
    remove_column :students, :email, :text
    remove_column :students, :term_start_date, :string
    remove_column :students, :term_end_date, :string
  end
end
