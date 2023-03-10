class Item < ApplicationRecord
  belongs_to :category
  has_many :item_modifiers
  has_many :modifiers, through: :item_modifiers
  has_one :rating, as: :ratingble
  scope :active, -> {where(:status => true )}
  scope :inactive, -> {where(:status => false )}
  # scope :good_rating, -> {where("rating >= 4")}
  # scope :avg_rating, -> {where("rating <= 4")}
  default_scope {order('created_at DESC')}
  # Ex:- scope :active, -> {where(:active => true)}
end
