class ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[show update destroy]

  # GET /reservations
  def index
    @reservations = Reservation.all.includes(:yacht, :city, :user)
    data = @reservations.map do |reservation|
      {
        id: reservation.id,
        start_date: reservation.start_date,
        end_date: reservation.end_date,
        total_value: reservation.total_value,
        city: reservation.city.name,
        user: reservation.user.name,
        user_id: reservation.user.id,
        yacht: reservation.yacht.name,
        image: reservation.yacht.image
      }
    end

    render json: data
  end

  # GET /reservations/1
  def show
    render json: @reservation
  end

  # POST /reservations
  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      render json: { reservation: @reservation,
                     status: 200 }, status: :created, location: @reservation
    else
      render json: {
        status: 404,
        errorMessage: @reservation.errors.full_messages.to_sentence
      }
    end
  end

  # PATCH/PUT /reservations/1
  def update
    if @reservation.update(reservation_params)
      render json: @reservation
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reservations/1
  def destroy
    return unless @reservation.destroy

    render json: { id: @reservation.id }
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :total_value, :yacht_id, :user_id, :city_id)
  end
end
