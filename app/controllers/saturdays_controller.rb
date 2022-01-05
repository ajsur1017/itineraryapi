class SaturdaysController < ApplicationController
  before_action :set_saturday, only: [:show, :update, :destroy]

  # GET /saturdays
  def index
    @saturdays = Saturday.all

    render json: @saturdays
  end

  # GET /saturdays/1
  def show
    render json: @saturday
  end

  # POST /saturdays
  def create
    @saturday = Saturday.new(saturday_params)

    if @saturday.save
      render json: @saturday, status: :created, location: @saturday
    else
      render json: @saturday.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /saturdays/1
  def update
    if @saturday.update(saturday_params)
      render json: @saturday
    else
      render json: @saturday.errors, status: :unprocessable_entity
    end
  end

  # DELETE /saturdays/1
  def destroy
    @saturday.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saturday
      @saturday = Saturday.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def saturday_params
      params.require(:saturday).permit(:name, :details, :time)
    end
end
