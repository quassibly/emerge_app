require "down"
require "cloudinary"

Cloudinary.config(
  cloud_name: "novelty142",
  api_key:    "462899885257868",
  api_secret: "g1Cnpe-pNp3XX-Ieo_Z2GCFw0VE",
)
#
#Cloudinary.config(
#  cloud_name: "whatisemerging",
#  api_key:    "862653138666628",
#  api_secret: "eH1ZiEjNjxR4CjLDVrgwHxRFmko",
#)

cursor = nil
p cursor
results = Cloudinary::Api.resources(
  :type => :upload,
  :prefix => "cache",
  :_max_results => 50
)

resources = results['resources']
cursor = results['next_cursor']
p cursor

p results['resources'].count

resources.each do |resource|
  p resource['public_id']
  p cursor
  Down.download(resource['url'], destination: "./scripts/downloaded_images/#{resource['public_id']}.#{resource['format']}")
end

while !!cursor
  results = Cloudinary::Api.resources(
    :type => :upload,
    :prefix => "cache",
    :_max_results => 50,
    :next_cursor => cursor
  )

  resources = results['resources']
  cursor = results['next_cursor']
    p cursor

  resources.each do |resource|
    p resource['public_id']
    Down.download(resource['url'], destination: "./scripts/downloaded_images/#{resource['public_id']}.#{resource['format']}")
  end
end

