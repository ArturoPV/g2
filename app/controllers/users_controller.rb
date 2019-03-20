class UsersController < ApplicationController
  def index
    @users = User.all
    @houses = House.all.order("")
  end
  def show
    @user = User.find(params[:id])
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(params.require(:user).permit(:name, :age, :password, :email))
    if @user.save
      redirect_to login_path
    end
  end
end
