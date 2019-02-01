class Article < ApplicationRecord
  belongs_to :contributor, optional: true
  belongs_to :photographer, optional: true
  extend FriendlyId
  friendly_id :headline, use: [:finders, :slugged]
  validates_presence_of :headline, :slug
end
