module DispatchesHelper
  def dispatches_photo
    @article.photo.present? ? @article.photo : @article.contributor&.photo
  end
end
