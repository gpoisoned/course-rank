class MainController < ApplicationController
  # Main Page
  def index
  end

  def search
    puts params.inspect
    @search_results = PgSearch.multisearch(params[:query]).paginate(:page => params[:page], :per_page => 15)
    puts @search_results.inspect
  end
end
