class AddColumnToStudent < ActiveRecord::Migration[7.0]
  def change
    # add_column :students, :email, :string
    add_column :students, :username, :string
    add_column :students, :password, :string
    add_column :students, :dob, :datetime
    add_column :students, :zipcode, :string
    add_column :students, :term_start_date, :string
    add_column :students, :term_end_date, :string
    add_column :students, :phone_number, :string
    add_column :students, :phonenumber, :integer
  end
end
