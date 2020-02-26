class SearchesController < ApplicationController
  before_action :authenticate, only: [:new, :create]
  def index
    @products = Product.search(params[:search]).limit(10)
    @search = params[:search]
    if user_signed_in?
      @shops = Shop.all
      rooms = current_user.rooms
      #自分が入ってるroomの相手のidを格納する
      @shop_ids = []
      rooms.each do |r|
        @shop_ids << r.shop_id
      end
    end
  end
end
