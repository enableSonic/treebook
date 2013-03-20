require 'test_helper'

class StatusTestsControllerTest < ActionController::TestCase
  setup do
    @status_test = status_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:status_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status_test" do
    assert_difference('StatusTest.count') do
      post :create, status_test: @status_test.attributes
    end

    assert_redirected_to status_test_path(assigns(:status_test))
  end

  test "should show status_test" do
    get :show, id: @status_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @status_test
    assert_response :success
  end

  test "should update status_test" do
    put :update, id: @status_test, status_test: @status_test.attributes
    assert_redirected_to status_test_path(assigns(:status_test))
  end

  test "should destroy status_test" do
    assert_difference('StatusTest.count', -1) do
      delete :destroy, id: @status_test
    end

    assert_redirected_to status_tests_path
  end
end
