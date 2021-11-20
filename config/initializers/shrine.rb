require 'shrine'
# require 'shrine/storage/file_system'
#require "shrine/storage/cloudinary"
#
#Cloudinary.config(
#  cloud_name: "whatisemerging",
#  api_key:    "862653138666628",
#  api_secret: "eH1ZiEjNjxR4CjLDVrgwHxRFmko",
#)

require "shrine/storage/s3"

s3_options = {
  bucket: "whatisemerging", # required
  region: "eu-central-1", # required
  access_key_id: ENV["AMAZON_S2_BUCKET_KEY"],
  secret_access_key: ENV["AMAZON_S3_BUCKET_SECRET_ACCESS_KEY"],
}

#Shrine.storages = {
#  cache: Shrine::Storage::Cloudinary.new(prefix: "cache"),
#  store: Shrine::Storage::Cloudinary.new(prefix: "store"),
#}

Shrine.storages = {
  cache: Shrine::Storage::S3.new(prefix: "cache", public: true, **s3_options),
  store: Shrine::Storage::S3.new(prefix: "store", public: true, **s3_options)
}

Shrine.plugin :activerecord
