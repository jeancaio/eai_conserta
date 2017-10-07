require 'test_helper'

class FonecedorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fonecedor = fonecedors(:one)
  end

  test "should get index" do
    get fonecedors_url
    assert_response :success
  end

  test "should get new" do
    get new_fonecedor_url
    assert_response :success
  end

  test "should create fonecedor" do
    assert_difference('Fonecedor.count') do
      post fonecedors_url, params: { fonecedor: { descricao: @fonecedor.descricao, endereco: @fonecedor.endereco, nome: @fonecedor.nome, tipo_servico: @fonecedor.tipo_servico } }
    end

    assert_redirected_to fonecedor_url(Fonecedor.last)
  end

  test "should show fonecedor" do
    get fonecedor_url(@fonecedor)
    assert_response :success
  end

  test "should get edit" do
    get edit_fonecedor_url(@fonecedor)
    assert_response :success
  end

  test "should update fonecedor" do
    patch fonecedor_url(@fonecedor), params: { fonecedor: { descricao: @fonecedor.descricao, endereco: @fonecedor.endereco, nome: @fonecedor.nome, tipo_servico: @fonecedor.tipo_servico } }
    assert_redirected_to fonecedor_url(@fonecedor)
  end

  test "should destroy fonecedor" do
    assert_difference('Fonecedor.count', -1) do
      delete fonecedor_url(@fonecedor)
    end

    assert_redirected_to fonecedors_url
  end
end
