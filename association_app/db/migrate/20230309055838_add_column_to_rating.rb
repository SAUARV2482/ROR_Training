class AddColumnToRating < ActiveRecord::Migration[7.0]
  def change
    add_column :ratings, :ratingble_id, :integer
    add_column :ratings, :ratingble_type, :string
  end
end
