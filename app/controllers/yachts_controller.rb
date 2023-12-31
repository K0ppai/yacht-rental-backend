class YachtsController < ApplicationController
  before_action :set_yacht, only: %i[show update destroy]

  # GET /yachts
  def index
    @yachts = Yacht.all

    render json: @yachts
  end

  # GET /yachts/1
  def show
    render json: @yacht
  end

  # POST /yachts
  def create
    @yacht = Yacht.new(yacht_params)

    if @yacht.save
      render json: {
        status: 200,
        yacht: @yacht
      }, location: @yacht
    else
      render json: {
        status: 404,
        errorMessage: @yacht.errors.full_messages.to_sentence
      }
    end
  end

  # PATCH/PUT /yachts/1
  def update
    if @yacht.update(yacht_params)
      render json: @yacht
    else
      render json: @yacht.errors, status: :unprocessable_entity
    end
  end

  # DELETE /yachts/1
  def destroy
    if @yacht.destroy
      render json: { id: @yacht.id }
    else
      render json: { error: 'Failed to delete yacht' }, status: :unprocessable_entity
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_yacht
    @yacht = Yacht.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def yacht_params
    params.require(:yacht).permit(:name, :description, :model, :image, :fee_per_day)
  end
end
