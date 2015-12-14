require 'test_helper'

class ApoioEducacioanlsControllerTest < ActionController::TestCase
  setup do
    @apoio_educacioanl = apoio_educacioanls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apoio_educacioanls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apoio_educacioanl" do
    assert_difference('ApoioEducacioanl.count') do
      post :create, apoio_educacioanl: { confirmar_senha: @apoio_educacioanl.confirmar_senha, email: @apoio_educacioanl.email, nome: @apoio_educacioanl.nome, senha: @apoio_educacioanl.senha }
    end

    assert_redirected_to apoio_educacioanl_path(assigns(:apoio_educacioanl))
  end

  test "should show apoio_educacioanl" do
    get :show, id: @apoio_educacioanl
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apoio_educacioanl
    assert_response :success
  end

  test "should update apoio_educacioanl" do
    patch :update, id: @apoio_educacioanl, apoio_educacioanl: { confirmar_senha: @apoio_educacioanl.confirmar_senha, email: @apoio_educacioanl.email, nome: @apoio_educacioanl.nome, senha: @apoio_educacioanl.senha }
    assert_redirected_to apoio_educacioanl_path(assigns(:apoio_educacioanl))
  end

  test "should destroy apoio_educacioanl" do
    assert_difference('ApoioEducacioanl.count', -1) do
      delete :destroy, id: @apoio_educacioanl
    end

    assert_redirected_to apoio_educacioanls_path
  end
end
