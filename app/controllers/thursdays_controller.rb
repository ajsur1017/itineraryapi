class ThursdaysController < ApplicationController
  before_action :set_thursday, only: [:show, :update, :destroy]

  # GET /thursdays
  def index
    @thursdays = Thursday.all

    render json: @thursdays
  end

  # GET /thursdays/1
  def show
    render json: @thursday
  end

  # POST /thursdays
  def create
    @thursday = Thursday.new(thursday_params)

    if @thursday.save
      render json: @thursday, status: :created, location: @thursday
    else
      render json: @thursday.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /thursdays/1
  def update
    if @thursday.update(thursday_params)
      render json: @thursday
    else
      render json: @thursday.errors, status: :unprocessable_entity
    end
  end

  # DELETE /thursdays/1
  def destroy
    @thursday.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thursday
      @thursday = Thursday.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def thursday_params
      params.require(:thursday).permit(:name, :details, :time)
    end
end
