class SearchController < ApplicationController
  def index
    @stations = Station.search_by_zip(params[:q])
  end
end
