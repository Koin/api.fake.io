require 'test_helper'

class RestApisControllerTest < ActionController::TestCase
  setup do
    @rest_api = rest_apis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rest_apis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rest_api" do
    assert_difference('RestApi.count') do
      post :create, rest_api: { http_status_code: @rest_api.http_status_code, method: @rest_api.method, name: @rest_api.name, request: @rest_api.request, response: @rest_api.response, webservice_id: @rest_api.webservice_id }
    end

    assert_redirected_to rest_api_path(assigns(:rest_api))
  end

  test "should show rest_api" do
    get :show, id: @rest_api
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rest_api
    assert_response :success
  end

  test "should update rest_api" do
    patch :update, id: @rest_api, rest_api: { http_status_code: @rest_api.http_status_code, method: @rest_api.method, name: @rest_api.name, request: @rest_api.request, response: @rest_api.response, webservice_id: @rest_api.webservice_id }
    assert_redirected_to rest_api_path(assigns(:rest_api))
  end

  test "should destroy rest_api" do
    assert_difference('RestApi.count', -1) do
      delete :destroy, id: @rest_api
    end

    assert_redirected_to rest_apis_path
  end
end
