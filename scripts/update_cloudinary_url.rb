require ''

article = Article.find_by(slug: "lessons-from-nature-on-personal-growth")

count = 0

Article.find_each do |article|
  body = article.body
  updated_body = body.gsub(/(https:\/\/whatisemerging.s3.eu-central-1.amazonaws.com\/store\/)[\w\/\,\.]*/) { |s| "https://whatisemerging.s3.eu-central-1.amazonaws.com/store/#{s.split('/').last}" }
  article.update(body: updated_body)
  count += 1
end

p "#{count} articles updated"

