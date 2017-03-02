class CarsController < ApplicationController
  # before_action :find_car, only: [:show ]

  def index
    @cars =  Car.all
  end

  def show
  end

  def new
    @car = Car.new(size: params[:size], availability: params[:availability])
    @car.save
  end

  def create
    @car = Car.new(car_params)
    if @car.save(car_params)
        flash[:notice] = "Successfully created car!"
        redirect_to car_path(@car)
    else
      flash[:notice]= "Error creating post"
      render :new
    end
  end

  private

  def car_params
    params.require(:car).permit(:id, :size, :availability)
  end

  def find_car
    @car = Car.find(params[:id, :size, :availability])
  end
end
