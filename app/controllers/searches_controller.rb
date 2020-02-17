class SearchesController < ApplicationController
  before_action :authenticate, only: [:new, :create]
  def index
    @products = Product.search(params[:search]).limit(10)
    @search = params[:search]
  end
  
end
