class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_page_temp

  def home
  end

  def about
    @page = 'grey'
  end

  def aboutedit
    @page = 'grey'
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
  end

  def gdpr
    @page = 'grey'
  end

  private

  def set_page_temp
    @page = 'temp'
  end
end
