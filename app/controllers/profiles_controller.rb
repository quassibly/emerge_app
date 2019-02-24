class ProfilesController < ArticlesController
  before_action :set_category

  def index         # GET /profiles
    @page = 'index'
    @articles = Article.people.published_not_deleted
    @articles = Article.people.not_deleted if user_signed_in?
    if params[:tag].present?
      @articles = @articles.where(tag: params[:tag])
    end
    @articles = sort_by_priority
  end

  def show          # GET /profiles/:id
    @page = 'grey'
    @article = Article.find(params[:id])
  end

  def new           # GET /profiles/new
    @page = 'grey'
    super
  end

  def create        # POST /profiles
    @article = Article.new(article_params)
    if params[:commit] == 'Publish' || params[:commit] == 'Unpublish'
      @article.published = !@article.published
      @article.published_at = Time.now
    end
    @article.save
    redirect_to profile_path(@article)
  end

  def edit
    @page = 'grey'
    @article = Article.find(params[:id])
  end

  def rawedit
    @page = 'grey'
    @article = Article.find(params[:id])
  end

  def update
    super
    redirect_to profile_path(@article)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
  end

  def delete
    @article = Article.find(params[:id])
    @article.deleted = true
    @article.save
  end

  private

  def find_article
    super
  end

  def article_params
    super
  end

  def set_category
    @category = "people"
  end

  def sort_by_priority
    @articles.each { |article| article.published_at = Time.now if article.published_at.nil? }
    @articles.each { |article| article.age = Time.now - article.published_at }
    @articles.each do |article|
      case article.priority
      when 3
        article.age = article.age * 4
      when 4
        article.age = article.age * 16
      end
    end
    @articles.sort_by &:age
    @articles.reject { |article| article.priority == 5 }
  end
end
