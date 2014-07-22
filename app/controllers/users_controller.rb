class UsersController < ApplicationController

  def index
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:name, :email))
    if @user.save
      redirect_to users_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end