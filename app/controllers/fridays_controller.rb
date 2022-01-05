class FridaysController < ApplicationController
  before_action :set_friday, only: [:show, :update, :destroy]

  # GET /fridays
  def index
    @fridays = Friday.all

    render json: @fridays
  end

  # GET /fridays/1
  def show
    render json: @friday
  end

  # POST /fridays
  def create
    @friday = Friday.new(friday_params)

    if @friday.save
      render json: @friday, status: :created, location: @friday
    else
      render json: @friday.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fridays/1
  def update
    if @friday.update(friday_params)
      render json: @friday
    else
      render json: @friday.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fridays/1
  def destroy
    @friday.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friday
      @friday = Friday.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def friday_params
      params.require(:friday).permit(:name, :details, :time)
    end
end
