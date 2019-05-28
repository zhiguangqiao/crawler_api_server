require 'test_helper'

class CountersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @counter = counters(:one)
  end

  test "should get index" do
    get counters_url, as: :json
    assert_response :success
  end

  # test "should create counter" do
  #   assert_difference('Counter.count') do
  #     post counters_url, params: { counter: { count: @counter.count, crawler_id: @counter.crawler_id } }, as: :json
  #   end

  #   assert_response 201
  # end

  test "should show counter" do
    get counter_url(@counter), as: :json
    assert_response :success
  end

  # test "should update counter" do
  #   patch counter_url(@counter), params: { counter: { count: @counter.count, crawler_id: @counter.crawler_id } }, as: :json
  #   assert_response 200
  # end

  # test "should destroy counter" do
  #   assert_difference('Counter.count', -1) do
  #     delete counter_url(@counter), as: :json
  #   end

  #   assert_response 204
  # end
end
