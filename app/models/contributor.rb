class Contributor < ApplicationRecord
  has_many :articles
  has_many :photographers
  has_many :articles, through: :photographers
end
