class PagesController < ApplicationController
  def index
    @careers = Career.all
  end

  def search
    @careers = Career.search(search_params)
    render :action => 'index'
  end

  def show
  end

  def search_params
    params.permit(:search)
  end
end
