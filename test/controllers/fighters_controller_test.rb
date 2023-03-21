require "test_helper"

class FightersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fighter = fighters(:one)
  end

  test "should get index" do
    get fighters_url, as: :json
    assert_response :success
  end

  test "should create fighter" do
    assert_difference('Fighter.count') do
      post fighters_url, params: { fighter: { health: @fighter.health, name: @fighter.name } }, as: :json
    end

    assert_response 201
  end

  test "should show fighter" do
    get fighter_url(@fighter), as: :json
    assert_response :success
  end

  test "should update fighter" do
    patch fighter_url(@fighter), params: { fighter: { health: @fighter.health, name: @fighter.name } }, as: :json
    assert_response 200
  end

  test "should destroy fighter" do
    assert_difference('Fighter.count', -1) do
      delete fighter_url(@fighter), as: :json
    end

    assert_response 204
  end
end
