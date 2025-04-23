require "application_system_test_case"

class PoliticasTest < ApplicationSystemTestCase
  setup do
    @politica = politicas(:one)
  end

  test "visiting the index" do
    visit politicas_url
    assert_selector "h1", text: "Politicas"
  end

  test "should create politica" do
    visit politicas_url
    click_on "New politica"

    fill_in "Analise", with: @politica.analise
    fill_in "Conteudo", with: @politica.conteudo
    fill_in "Titulo", with: @politica.titulo
    click_on "Create Politica"

    assert_text "Politica was successfully created"
    click_on "Back"
  end

  test "should update Politica" do
    visit politica_url(@politica)
    click_on "Edit this politica", match: :first

    fill_in "Analise", with: @politica.analise
    fill_in "Conteudo", with: @politica.conteudo
    fill_in "Titulo", with: @politica.titulo
    click_on "Update Politica"

    assert_text "Politica was successfully updated"
    click_on "Back"
  end

  test "should destroy Politica" do
    visit politica_url(@politica)
    click_on "Destroy this politica", match: :first

    assert_text "Politica was successfully destroyed"
  end
end
