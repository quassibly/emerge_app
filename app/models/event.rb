class Event < ApplicationRecord
  geocoded_by :location
  after_validation :geocode

  default_scope { order(published_at: :desc) }
  scope :category, -> (category) { where category: category }
  scope :event_type, -> (event_type) { where event_type: event_type}
  scope :location, -> (location) { where location: location }
  scope :month, -> (date) { where date: month }

  class Product < ActiveRecord::Base
    scope :status, -> (status) { where status: status }
    scope :location, -> (location_id) { where location_id: location_id }
    scope :starts_with, -> (name) { where("name like ?", "#{name}%")}
  end
end
