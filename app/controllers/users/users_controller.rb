class UsersController < ApplicationController
  before_action :set_user, only: [ :update, :destroy ]

  def edit
  end

  def update
    if @user.update( user_params )
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if @user.destroy
      redirect_to root_path
      else
      render :edit
    end
  end

  private
  def set_user
    @user = User.find( params[:id] )
  end

  def user_params
    params.require(:user).permit( :name )
  end
end