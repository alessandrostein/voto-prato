require 'test_helper'

class QualificacoesControllerTest < ActionController::TestCase
  setup do
    @qualificacao = qualificacoes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qualificacoes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qualificacao" do
    assert_difference('Qualificacao.count') do
      post :create, qualificacao: { cliente_id: @qualificacao.cliente_id, nota: @qualificacao.nota, restaurante_id: @qualificacao.restaurante_id, valor_gasto: @qualificacao.valor_gasto }
    end

    assert_redirected_to qualificacao_path(assigns(:qualificacao))
  end

  test "should show qualificacao" do
    get :show, id: @qualificacao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @qualificacao
    assert_response :success
  end

  test "should update qualificacao" do
    patch :update, id: @qualificacao, qualificacao: { cliente_id: @qualificacao.cliente_id, nota: @qualificacao.nota, restaurante_id: @qualificacao.restaurante_id, valor_gasto: @qualificacao.valor_gasto }
    assert_redirected_to qualificacao_path(assigns(:qualificacao))
  end

  test "should destroy qualificacao" do
    assert_difference('Qualificacao.count', -1) do
      delete :destroy, id: @qualificacao
    end

    assert_redirected_to qualificacoes_path
  end
end
