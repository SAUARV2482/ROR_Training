class AddColumnToAuthor < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :age, :integer
    add_column :authors, :dob, :datetime
  end
end
