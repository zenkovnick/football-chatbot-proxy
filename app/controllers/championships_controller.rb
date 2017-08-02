class ChampionshipsController < ApplicationController
  before_action :set_championship, only: [:show, :update, :destroy]

  # GET /championships
  # GET /championships.json
  def index
    @championships = Championship.all
  end

  # GET /championships/1
  # GET /championships/1.json
  def show
  end

  # POST /championships
  # POST /championships.json
  def create
    @championship = Championship.new(championship_params)

    if @championship.save
      render :show, status: :created, location: @championship
    else
      render json: @championship.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /championships/1
  # PATCH/PUT /championships/1.json
  def update
    if @championship.update(championship_params)
      render :show, status: :ok, location: @championship
    else
      render json: @championship.errors, status: :unprocessable_entity
    end
  end

  # DELETE /championships/1
  # DELETE /championships/1.json
  def destroy
    @championship.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_championship
      @championship = Championship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def championship_params
      params.fetch(:championship, {})
    end
end
