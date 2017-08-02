class FixturesController < ApplicationController
  before_action :set_fixture, only: [:show, :update, :destroy]

  # GET /fixtures
  # GET /fixtures.json
  def index
    @fixtures = Fixture.all
  end

  # GET /fixtures/1
  # GET /fixtures/1.json
  def show
  end

  # POST /fixtures
  # POST /fixtures.json
  def create
    @fixture = Fixture.new(fixture_params)

    if @fixture.save
      render :show, status: :created, location: @fixture
    else
      render json: @fixture.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fixtures/1
  # PATCH/PUT /fixtures/1.json
  def update
    if @fixture.update(fixture_params)
      render :show, status: :ok, location: @fixture
    else
      render json: @fixture.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fixtures/1
  # DELETE /fixtures/1.json
  def destroy
    @fixture.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fixture
      @fixture = Fixture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fixture_params
      params.fetch(:fixture, {})
    end
end
