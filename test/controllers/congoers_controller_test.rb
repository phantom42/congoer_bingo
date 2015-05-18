require 'test_helper'

class CongoersControllerTest < ActionController::TestCase
  setup do
    @congoer = congoers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:congoers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create congoer" do
    assert_difference('Congoer.count') do
      post :create, congoer: { description: @congoer.description }
    end

    assert_redirected_to congoer_path(assigns(:congoer))
  end

  test "should show congoer" do
    get :show, id: @congoer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @congoer
    assert_response :success
  end

  test "should update congoer" do
    patch :update, id: @congoer, congoer: { description: @congoer.description }
    assert_redirected_to congoer_path(assigns(:congoer))
  end

  test "should destroy congoer" do
    assert_difference('Congoer.count', -1) do
      delete :destroy, id: @congoer
    end

    assert_redirected_to congoers_path
  end
end
