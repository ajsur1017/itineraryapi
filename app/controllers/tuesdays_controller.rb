class TuesdaysController < ApplicationController
  before_action :set_tuesday, only: [:show, :update, :destroy]

  # GET /tuesdays
  def index
    @tuesdays = Tuesday.all

    render json: @tuesdays
  end

  # GET /tuesdays/1
  def show
    render json: @tuesday
  end

  # POST /tuesdays
  def create
    @tuesday = Tuesday.new(tuesday_params)

    if @tuesday.save
      render json: @tuesday, status: :created, location: @tuesday
    else
      render json: @tuesday.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tuesdays/1
  def update
    if @tuesday.update(tuesday_params)
      render json: @tuesday
    else
      render json: @tuesday.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tuesdays/1
  def destroy
    @tuesday.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tuesday
      @tuesday = Tuesday.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tuesday_params
      params.require(:tuesday).permit(:name, :details, :time)
    end
end
