class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @users, notice: 'User was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
  end
end
