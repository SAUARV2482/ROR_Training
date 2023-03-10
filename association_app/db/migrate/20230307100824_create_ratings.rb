class CreateRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|
      t.integer :rating
      t.add_references :ratingble, polymorphic: true

      t.timestamps
    end
  end
end
