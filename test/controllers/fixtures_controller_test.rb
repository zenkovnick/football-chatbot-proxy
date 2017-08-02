require 'test_helper'

class FixturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fixture = fixtures(:one)
  end

  test "should get index" do
    get fixtures_url, as: :json
    assert_response :success
  end

  test "should create fixture" do
    assert_difference('Fixture.count') do
      post fixtures_url, params: { fixture: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show fixture" do
    get fixture_url(@fixture), as: :json
    assert_response :success
  end

  test "should update fixture" do
    patch fixture_url(@fixture), params: { fixture: {  } }, as: :json
    assert_response 200
  end

  test "should destroy fixture" do
    assert_difference('Fixture.count', -1) do
      delete fixture_url(@fixture), as: :json
    end

    assert_response 204
  end
end
