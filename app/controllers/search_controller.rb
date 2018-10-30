class SearchController < ApplicationController
  def index
    @search_result = SentenceSearchResult.new(params[:q])
  end

end
