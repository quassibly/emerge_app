require 'shrine'
# require 'shrine/storage/file_system'
require "shrine/storage/cloudinary"

Cloudinary.config(
  cloud_name: "whatisemerging",
  api_key:    "862653138666628",
  api_secret: "eH1ZiEjNjxR4CjLDVrgwHxRFmko",
)

Shrine.storages = {
  cache: Shrine::Storage::Cloudinary.new(prefix: "cache"),
  store: Shrine::Storage::Cloudinary.new(prefix: "store"),
}

Shrine.plugin :activerecord
