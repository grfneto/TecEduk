require 'test_helper'

class GestorsControllerTest < ActionController::TestCase
  setup do
    @gestor = gestors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gestors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gestor" do
    assert_difference('Gestor.count') do
      post :create, gestor: { confirmar_senha: @gestor.confirmar_senha, email: @gestor.email, nome: @gestor.nome, senha: @gestor.senha }
    end

    assert_redirected_to gestor_path(assigns(:gestor))
  end

  test "should show gestor" do
    get :show, id: @gestor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gestor
    assert_response :success
  end

  test "should update gestor" do
    patch :update, id: @gestor, gestor: { confirmar_senha: @gestor.confirmar_senha, email: @gestor.email, nome: @gestor.nome, senha: @gestor.senha }
    assert_redirected_to gestor_path(assigns(:gestor))
  end

  test "should destroy gestor" do
    assert_difference('Gestor.count', -1) do
      delete :destroy, id: @gestor
    end

    assert_redirected_to gestors_path
  end
end
