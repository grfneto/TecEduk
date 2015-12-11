require 'test_helper'

class TelacadsControllerTest < ActionController::TestCase
  setup do
    @telacad = telacads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:telacads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create telacad" do
    assert_difference('Telacad.count') do
      post :create, telacad: { nome: @telacad.nome }
    end

    assert_redirected_to telacad_path(assigns(:telacad))
  end

  test "should show telacad" do
    get :show, id: @telacad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @telacad
    assert_response :success
  end

  test "should update telacad" do
    patch :update, id: @telacad, telacad: { nome: @telacad.nome }
    assert_redirected_to telacad_path(assigns(:telacad))
  end

  test "should destroy telacad" do
    assert_difference('Telacad.count', -1) do
      delete :destroy, id: @telacad
    end

    assert_redirected_to telacads_path
  end
end
