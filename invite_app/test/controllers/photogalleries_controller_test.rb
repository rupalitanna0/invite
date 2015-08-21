require 'test_helper'

class PhotogalleriesControllerTest < ActionController::TestCase
  setup do
    @photogallery = photogalleries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:photogalleries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create photogallery" do
    assert_difference('Photogallery.count') do
      post :create, photogallery: { details: @photogallery.details, pics: @photogallery.pics, topic: @photogallery.topic }
    end

    assert_redirected_to photogallery_path(assigns(:photogallery))
  end

  test "should show photogallery" do
    get :show, id: @photogallery
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @photogallery
    assert_response :success
  end

  test "should update photogallery" do
    patch :update, id: @photogallery, photogallery: { details: @photogallery.details, pics: @photogallery.pics, topic: @photogallery.topic }
    assert_redirected_to photogallery_path(assigns(:photogallery))
  end

  test "should destroy photogallery" do
    assert_difference('Photogallery.count', -1) do
      delete :destroy, id: @photogallery
    end

    assert_redirected_to photogalleries_path
  end
end
