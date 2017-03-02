class ReservationsController < ApplicationController
  before_action :find_car

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = @car.reservations.build(reservation_params)
    @reservation.save
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_day, :end_day, :number_of_persons)
  end

  def find_car
    @car = Car.find(params[:car_id])
  end
end
