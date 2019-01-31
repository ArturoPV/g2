class UsersController < ApplicationController
  def index
    @users = User.all
    @houses = House.all
  end
  def show
    @user = User.find(params[:id])
  end
  def new
    @user = User.new
  end
  def create
    binding.pry
    @user = User.new(params.require[:user].permit(:name, :age, :password, :email))
    @user.save
    redirect_to users_path
  end
end
