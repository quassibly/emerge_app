class Pin < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: [:finders, :slugged]
  validates_presence_of :name, :slug

  geocoded_by :location
  after_validation :geocode
end
