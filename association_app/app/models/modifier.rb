class Modifier < ApplicationRecord
  # belongs_to :Item
  has_many :item_modifiers
  has_many :items, through: :item_modifiers 
  has_one :rating, as: :ratingble
  default_scope {order('created_at DESC')}
end
