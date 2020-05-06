module OpinionsHelper
  def opinions_photo
    @article.photo.present? ? @article.photo : @article.contributor&.photo
  end
end
