require 'test_helper'

class LeagueTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @league_table = league_tables(:one)
  end

  test "should get index" do
    get league_tables_url, as: :json
    assert_response :success
  end

  test "should create league_table" do
    assert_difference('LeagueTable.count') do
      post league_tables_url, params: { league_table: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show league_table" do
    get league_table_url(@league_table), as: :json
    assert_response :success
  end

  test "should update league_table" do
    patch league_table_url(@league_table), params: { league_table: {  } }, as: :json
    assert_response 200
  end

  test "should destroy league_table" do
    assert_difference('LeagueTable.count', -1) do
      delete league_table_url(@league_table), as: :json
    end

    assert_response 204
  end
end
