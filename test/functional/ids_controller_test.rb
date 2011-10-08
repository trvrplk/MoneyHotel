require 'test_helper'

class IdsControllerTest < ActionController::TestCase
  setup do
    @id = ids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create id" do
    assert_difference('Id.count') do
      post :create, :id => @id.attributes
    end

    assert_redirected_to id_path(assigns(:id))
  end

  test "should show id" do
    get :show, :id => @id.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @id.to_param
    assert_response :success
  end

  test "should update id" do
    put :update, :id => @id.to_param, :id => @id.attributes
    assert_redirected_to id_path(assigns(:id))
  end

  test "should destroy id" do
    assert_difference('Id.count', -1) do
      delete :destroy, :id => @id.to_param
    end

    assert_redirected_to ids_path
  end
end
