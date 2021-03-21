class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_page_temp

  def home
  end

  def about
    @page = 'grey'
    @about = Article.find_by(category: 'about')
  end

  def aboutedit
    @page = 'grey'
    @article = Article.find_by(category: 'about')
  end

  def update
    @article = Article.find(params[:article][:id])
    @article.update(profile_params)
    redirect_to send("#{@article.category}_path")
  end

  def updates
  end

  def profiles
  end

  def opinions
  end

  def video
  end

  def podcast
  end

  def events
  end

  def spaces
  end

  def imprint
    @page = 'grey'
    @imprint = Article.find_by(category: 'imprint')
  end

  def imprintedit
    @page = 'grey'
    @article = Article.find_by(category: 'imprint')
  end

  def gdpr
    @page = 'grey'
  end

  private

  def set_page_temp
    @page = 'temp'
  end

  def profile_params
    params.require(:article).permit(:headline, :subhead, :tag, :contributor_id, :photographer_id, :photo, :body, :published, :deleted, :category, :seo_title, :meta, :feature, :priority)
  end
end
