class AddIndexToStudent < ActiveRecord::Migration[7.0]
  def change
    add_index :students, :first_name
  end
end
