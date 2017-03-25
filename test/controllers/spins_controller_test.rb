require 'test_helper'

class SpinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spin = spins(:one)
  end

  test "should get index" do
    get spins_url, as: :json
    assert_response :success
  end

  test "should create spin" do
    assert_difference('Spin.count') do
      post spins_url, params: { spin: { description: @spin.description, name: @spin.name } }, as: :json
    end

    assert_response 201
  end

  test "should show spin" do
    get spin_url(@spin), as: :json
    assert_response :success
  end

  test "should update spin" do
    patch spin_url(@spin), params: { spin: { description: @spin.description, name: @spin.name } }, as: :json
    assert_response 200
  end

  test "should destroy spin" do
    assert_difference('Spin.count', -1) do
      delete spin_url(@spin), as: :json
    end

    assert_response 204
  end
end
