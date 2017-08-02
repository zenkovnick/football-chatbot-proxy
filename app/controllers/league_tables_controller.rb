class LeagueTablesController < ApplicationController
  before_action :set_league_table, only: [:show, :update, :destroy]

  # GET /league_tables
  # GET /league_tables.json
  def index
    @league_tables = LeagueTable.all
  end

  # GET /league_tables/1
  # GET /league_tables/1.json
  def show
  end

  # POST /league_tables
  # POST /league_tables.json
  def create
    @league_table = LeagueTable.new(league_table_params)

    if @league_table.save
      render :show, status: :created, location: @league_table
    else
      render json: @league_table.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /league_tables/1
  # PATCH/PUT /league_tables/1.json
  def update
    if @league_table.update(league_table_params)
      render :show, status: :ok, location: @league_table
    else
      render json: @league_table.errors, status: :unprocessable_entity
    end
  end

  # DELETE /league_tables/1
  # DELETE /league_tables/1.json
  def destroy
    @league_table.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_league_table
      @league_table = LeagueTable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def league_table_params
      params.fetch(:league_table, {})
    end
end
