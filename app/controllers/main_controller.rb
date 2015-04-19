class MainController < ApplicationController
  # Main Page
  def index
  end

  def search
    @search_results = PgSearch.multisearch(params[:query]).paginate(:page => params[:page], :per_page => 15)
  end
end
