class UsersController < ApplicationController


  def new
    @user = User.new
  end
  
  def index
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to login_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email,  :address, :favorite_brand, :favorite_clothes_lineage, :Photos_of_clothes_in_possession, :items_you_want,:price_cap)
  end
end