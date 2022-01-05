class WednesdaysController < ApplicationController
  before_action :set_wednesday, only: [:show, :update, :destroy]

  # GET /wednesdays
  def index
    @wednesdays = Wednesday.all

    render json: @wednesdays
  end

  # GET /wednesdays/1
  def show
    render json: @wednesday
  end

  # POST /wednesdays
  def create
    @wednesday = Wednesday.new(wednesday_params)

    if @wednesday.save
      render json: @wednesday, status: :created, location: @wednesday
    else
      render json: @wednesday.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /wednesdays/1
  def update
    if @wednesday.update(wednesday_params)
      render json: @wednesday
    else
      render json: @wednesday.errors, status: :unprocessable_entity
    end
  end

  # DELETE /wednesdays/1
  def destroy
    @wednesday.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wednesday
      @wednesday = Wednesday.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def wednesday_params
      params.require(:wednesday).permit(:name, :details, :time)
    end
end
