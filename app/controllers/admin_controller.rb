# app/controllers/admins_controller.rb
class AdminsController < ApplicationController
    def new
      @admin_action = Admin.new
    end
  
    def promote_user
      @user = User.find_by(email: params[:admin][:user_identifier]) # You can adapt this search method as needed
      if @user
        admin = Admin.create(user: @user)
        # Handle success
      else
        # Handle failure (user not found)
      end
      redirect_to admin_dashboard_path # Redirect to the admin dashboard or the appropriate location
    end
  end
  