class UpdateImageUrls < ActiveRecord::Migration[5.1]
  def change
    Article.transaction do
      Article.find_each do |article|
        p article.slug
        body = article.body
        updated_body = body.gsub(/(https:\/\/res.cloudinary.com)[\w\/\,\.]*/) { |s| "https://whatisemerging.s3.eu-central-1.amazonaws.com/store/#{s.split('/').last}" }
        article.update(body: updated_body)
      end
    end

    Contributor.find_each do |contributor|
      photo_url = contributor.photo
      updated_photo_url = photo_url.gsub(/(https:\/\/res.cloudinary.com)[\w\/\,\.]*/) { |s| "https://whatisemerging.s3.eu-central-1.amazonaws.com/store/#{s.split('/').last}" }
      contributor.update(photo: updated_photo_url)
    end

    Photographer.find_each do |photographer|
      photo_url = photographer.photo
      updated_photo_url = photo_url.gsub(/(https:\/\/res.cloudinary.com)[\w\/\,\.]*/) { |s| "https://whatisemerging.s3.eu-central-1.amazonaws.com/store/#{s.split('/').last}" }
      photographer.update(photo: updated_photo_url)
    end
  end
end
