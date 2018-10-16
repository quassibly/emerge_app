class Image < ApplicationRecord
  #adds an `image` virtual attribute
  # include ::PhotoUploader::Attachment.new(:image)
  include PhotoUploader[:image]
end
