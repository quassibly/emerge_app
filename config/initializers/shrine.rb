require 'shrine'
# require 'shrine/storage/file_system'
require "shrine/storage/cloudinary"

Cloudinary.config(
  cloud_name: "novelty142",
  api_key:    "462899885257868",
  api_secret: "g1Cnpe-pNp3XX-Ieo_Z2GCFw0VE",
)

Shrine.storages = {
  cache: Shrine::Storage::Cloudinary.new(prefix: "cache"),
  store: Shrine::Storage::Cloudinary.new(prefix: "store"),
}

# Shrine.storages = {
#   # temporary storage
#   cache: Shrine::Storage::FileSystem.new('public', prefix: 'uploads/cache'),

#   # permanent storage
#   store: Shrine::Storage::FileSystem.new('public', prefix: 'uploads/store'),
# }

# Shrine.plugin :activerecord
# Shrine.plugin :cached_attachment_data # for forms
