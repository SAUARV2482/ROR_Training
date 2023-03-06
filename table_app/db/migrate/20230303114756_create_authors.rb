class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :firstname
      t.string :bookname

      t.timestamps
    end
  end
end
