class RenameColumnFromStudent < ActiveRecord::Migration[7.0]
  def change
    rename_column :students, :phonenumber, :city
  end
end
