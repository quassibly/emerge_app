class ProfilesController < ArticlesController
  before_action :set_category

  def index         # GET /profiles
    @page = 'index'
    @profiles = Article.profile.published_not_deleted
    @profiles = Article.profile.not_deleted if user_signed_in?
    if params[:tag].present?
      @profiles = @profiles.where(tag: params[:tag])
    end
    @profiles = sort_by_priority
  end

  def show          # GET /profiles/:id
    @page = 'grey'
    @profile = Article.find(params[:id])
    @article = Article.find(params[:id])
  end

  def new           # GET /profiles/new
    @page = 'grey'
    @profile = Article.new
    @article = Article.new
  end

  def create        # POST /profiles
    @profile = Article.new(profile_params)
    if params[:commit] == 'Publish' || params[:commit] == 'Unpublish'
      @profile.published = !@profile.published
      @profile.published_at = Time.now
    end
    @profile.save
    redirect_to profile_path(@profile)
  end

  def edit
    @page = 'grey'
    @profile = Article.find(params[:id])
    @article = Article.find(params[:id])
  end

  def rawedit
    @page = 'grey'
    @profile = Article.find(params[:id])
  end

  def update
    @profile = Article.find(params[:id])
    @profile.update(profile_params)
    if params[:commit] == 'Publish' || params[:commit] == 'Unpublish'
      @profile.published = !@profile.published
      @profile.published_at = Time.now
    end
    @profile.save
    redirect_to profile_path(@profile)
  end

  def destroy
    @profile = Article.find(params[:id])
    @profile.destroy
  end

  def delete
    @profile = Article.find(params[:id])
    @profile.deleted = true
    @profile.save
  end

  private

  def profile_params
  params.require(:article).permit(:headline, :subhead, :tag, :contributor_id, :photographer_id, :photo, :body, :published, :deleted, :category, :seo_title, :meta, :feature, :priority)
  end

  def set_category
    @category = "profiles"
  end

  def sort_by_priority
    @profiles.each { |article| article.published_at = Time.now if article.published_at == nil }
    @profiles.each { |article| article.age = Time.now - article.published_at }
    @profiles.each do |article|
      case article.priority
      when 3
        article.age = article.age * 4
      when 4
        article.age = article.age * 16
      end
    end
    @profiles.sort_by &:age
    @profiles.reject { |article| article.priority == 5 }
  end
end
