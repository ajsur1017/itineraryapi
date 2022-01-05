class SundaysController < ApplicationController
  before_action :set_sunday, only: [:show, :update, :destroy]

  # GET /sundays
  def index
    @sundays = Sunday.all

    render json: @sundays
  end

  # GET /sundays/1
  def show
    render json: @sunday
  end

  # POST /sundays
  def create
    @sunday = Sunday.new(sunday_params)

    if @sunday.save
      render json: @sunday, status: :created, location: @sunday
    else
      render json: @sunday.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sundays/1
  def update
    if @sunday.update(sunday_params)
      render json: @sunday
    else
      render json: @sunday.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sundays/1
  def destroy
    @sunday.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sunday
      @sunday = Sunday.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sunday_params
      params.require(:sunday).permit(:name, :details, :time)
    end
end
