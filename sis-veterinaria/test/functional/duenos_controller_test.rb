require 'test_helper'

class DuenosControllerTest < ActionController::TestCase
  setup do
    @dueno = duenos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:duenos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dueno" do
    assert_difference('Dueno.count') do
      post :create, dueno: @dueno.attributes
    end

    assert_redirected_to dueno_path(assigns(:dueno))
  end

  test "should show dueno" do
    get :show, id: @dueno
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dueno
    assert_response :success
  end

  test "should update dueno" do
    put :update, id: @dueno, dueno: @dueno.attributes
    assert_redirected_to dueno_path(assigns(:dueno))
  end

  test "should destroy dueno" do
    assert_difference('Dueno.count', -1) do
      delete :destroy, id: @dueno
    end

    assert_redirected_to duenos_path
  end
end
