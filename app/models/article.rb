class Article < ApplicationRecord
  belongs_to :contributor, optional: true
  belongs_to :photographer, optional: true
  extend FriendlyId
  friendly_id :headline, use: [:finders, :slugged]
  validates_presence_of :headline, :slug

  include PgSearch
  multisearchable against: [ :person, :headline, :seo_title, :subhead, :meta, :tag, :body ]

  scope :published, -> { where(published: true)}
  scope :not_published, -> { where(published: false)}
  scope :not_deleted, -> { where(deleted: false)}
  scope :published_not_deleted, -> { published.not_deleted }

  scope :update_cat, -> { where(category: 'update')}
  scope :profile, -> { where(category: 'profile')}
  scope :opinion, -> { where(category: 'opinion')}
  scope :video, -> { where(category: 'video')}
  scope :podcast, -> { where(category: 'podcast')}
  scope :not_update, -> { where.not(category: 'update')}
end
