class Photo < ActiveRecord::Base
  include ImageUploader::Attachment(:image) # adds an `image` virtual attribute
end
