class Route < ApplicationRecord
  belongs_to :user
  has_many :route_photos, dependent: :destroy
  accepts_nested_attributes_for :route_photos
end
