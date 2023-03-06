class RemoveAnotherFromStudent < ActiveRecord::Migration[7.0]
  def change
    remove_column :student, :phonenumber, :integer
    remove_column :student, :city, :integer
    remove_column :student, :email, :text
    remove_column :student, :term_start_date, :string
    remove_column :student, :term_end_date, :string
  end
end
