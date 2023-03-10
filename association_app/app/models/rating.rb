class Rating < ApplicationRecord
  belongs_to :ratingble, polymorphic: true
  scope :good_rating, -> {where("rating >= 4")}
  scope :avg_rating, -> {where("rating <= 4")}
  default_scope {order('created_at DESC')}
  
  # Ex:- scope :active, -> {where(:active => true)}
end
