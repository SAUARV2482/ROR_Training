class Category < ApplicationRecord
  has_many :items
  has_one :rating,  as: :ratingble
  scope :active_inactive, -> {where(:status => active || inactive)}
  default_scope {order('created_at DESC')}
end
