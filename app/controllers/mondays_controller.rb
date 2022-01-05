class MondaysController < ApplicationController
  before_action :set_monday, only: [:show, :update, :destroy]

  # GET /mondays
  def index
    @mondays = Monday.all

    render json: @mondays
  end

  # GET /mondays/1
  def show
    render json: @monday
  end

  # POST /mondays
  def create
    @monday = Monday.new(monday_params)

    if @monday.save
      render json: @monday, status: :created, location: @monday
    else
      render json: @monday.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mondays/1
  def update
    if @monday.update(monday_params)
      render json: @monday
    else
      render json: @monday.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mondays/1
  def destroy
    @monday.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monday
      @monday = Monday.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def monday_params
      params.require(:monday).permit(:name, :details, :time)
    end
end
