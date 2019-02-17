class Pin < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: [:finders, :slugged]
  validates_presence_of :name, :slug

  geocoded_by :location
  after_validation :geocode

  # default_scope {where(deleted: false)}

  scope :published, -> { where(published: true) }
  scope :not_deleted, -> { where(deleted: false) }
  scope :published_not_deleted, -> { published.not_deleted }

  scope :space, -> {where(category: 'space')}
  scope :event, -> {where(category: 'event')}

  scope :event_type, -> (type) {where(event_type: type)}
  scope :region, -> (region) {where(region: region)}
  scope :tag, -> (tag) {where(tag: tag)}
end
