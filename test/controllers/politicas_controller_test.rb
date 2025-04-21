require "test_helper"

class PoliticasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @politica = politicas(:one)
  end

  test "should get index" do
    get politicas_url
    assert_response :success
  end

  test "should get new" do
    get new_politica_url
    assert_response :success
  end

  test "should create politica" do
    assert_difference("Politica.count") do
      post politicas_url, params: { politica: { analise: @politica.analise, conteudo: @politica.conteudo, titulo: @politica.titulo } }
    end

    assert_redirected_to politica_url(Politica.last)
  end

  test "should show politica" do
    get politica_url(@politica)
    assert_response :success
  end

  test "should get edit" do
    get edit_politica_url(@politica)
    assert_response :success
  end

  test "should update politica" do
    patch politica_url(@politica), params: { politica: { analise: @politica.analise, conteudo: @politica.conteudo, titulo: @politica.titulo } }
    assert_redirected_to politica_url(@politica)
  end

  test "should destroy politica" do
    assert_difference("Politica.count", -1) do
      delete politica_url(@politica)
    end

    assert_redirected_to politicas_url
  end
end
