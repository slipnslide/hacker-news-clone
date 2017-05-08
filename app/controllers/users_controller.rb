class UsersController < ApplicationController

  def index
  end

  def new
    @new_user = User.new
  end

  def create
    @new_user = User.new(user_params)

    if @new_user.save
      redirect_to user_path(@new_user.id)
    else
      render 'new'
    end
  end

  def show
    @current_user = User.find_by(id: params[:id])
  end



  private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
