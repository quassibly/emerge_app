class Pin < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: [:finders, :slugged]
  validates_presence_of :name, :slug

  geocoded_by :address
  after_validation :geocode
end
