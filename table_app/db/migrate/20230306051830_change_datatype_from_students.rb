class ChangeDatatypeFromStudents < ActiveRecord::Migration[7.0]
  def up
    change_column :students, :email, :text
  end
  def down
    change_column :students, :email, :string
  end
end
