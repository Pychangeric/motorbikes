# app/controllers/users_controller.rb
class UsersController < ApplicationController
    before_action :authenticate_user!, only: [:buy, :perform_action]
  
    def show
      @user = current_user
      @user_profile = @user.user_profile
    end
  
    def edit
      @user = current_user
      @user_profile = @user.user_profile
    end
  
    def update
      @user = current_user
      if @user.update(user_params)
        redirect_to user_path(@user), notice: 'Profile updated successfully.'
      else
        render :edit
      end
    end
  
    def activities
      @user = current_user
      @activities = @user.activities
    end
  
    def bikes
      @user = current_user
      @bikes = @user.bikes
    end
  
    private
  
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, user_profile_attributes: [:id, :Full_name, :Phone_number, :email])
    end
  end
  