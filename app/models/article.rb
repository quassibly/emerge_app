class Article < ApplicationRecord
  belongs_to :contributor
  belongs_to :photographer, optional: true
end
