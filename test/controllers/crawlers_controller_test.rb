require 'test_helper'

class CrawlersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crawler = crawlers(:one)
  end

  test "should get index" do
    get crawlers_url, as: :json
    assert_response :success
  end

  test "should create crawler" do
    assert_difference('Crawler.count') do
      post crawlers_url, params: { crawler: { desc: @crawler.desc, expression: @crawler.expression, name: @crawler.name, url: @crawler.url } }, as: :json
    end

    assert_response 201
  end

  test "should show crawler" do
    get crawler_url(@crawler), as: :json
    assert_response :success
  end

  test "should update crawler" do
    patch crawler_url(@crawler), params: { crawler: { desc: @crawler.desc, expression: @crawler.expression, name: @crawler.name, url: @crawler.url } }, as: :json
    assert_response 200
  end

  test "should destroy crawler" do
    assert_difference('Crawler.count', -1) do
      delete crawler_url(@crawler), as: :json
    end

    assert_response 204
  end
end
