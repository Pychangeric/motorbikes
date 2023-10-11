# app/controllers/bikes_controller.rb
class BikesController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
  
    def index
      @bikes = Bike.all
    end
  
    def show
      @bike = Bike.find(params[:id])
    end
  
    def new
      @bike = Bike.new
    end
  
    def create
      @bike = current_user.bikes.build(bike_params)
  
      if @bike.save
        redirect_to @bike
      else
        render 'new'
      end
    end
  
    def destroy
      @bike = Bike.find(params[:id])
      @bike.destroy
  
      redirect_to bikes_path
    end
  
    private
  
    def bike_params
      params.require(:bike).permit(:name, :model, :specifications, :seller_contact, :photos, :type)
    end
  end
  