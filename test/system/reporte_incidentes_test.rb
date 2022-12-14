require "application_system_test_case"

class ReporteIncidentesTest < ApplicationSystemTestCase
  setup do
    @reporte_incidente = reporte_incidentes(:one)
  end

  test "visiting the index" do
    visit reporte_incidentes_url
    assert_selector "h1", text: "Reporte incidentes"
  end

  test "should create reporte incidente" do
    visit reporte_incidentes_url
    click_on "New reporte incidente"

    fill_in "Ciudad", with: @reporte_incidente.ciudad
    fill_in "Distrito", with: @reporte_incidente.distrito
    fill_in "Estadopista", with: @reporte_incidente.estadoPista
    fill_in "Estadotrafico", with: @reporte_incidente.estadoTrafico
    fill_in "Provincia", with: @reporte_incidente.provincia
    fill_in "Region", with: @reporte_incidente.region
    fill_in "Tipo", with: @reporte_incidente.tipo
    click_on "Create Reporte incidente"

    assert_text "Reporte incidente was successfully created"
    click_on "Back"
  end

  test "should update Reporte incidente" do
    visit reporte_incidente_url(@reporte_incidente)
    click_on "Edit this reporte incidente", match: :first

    fill_in "Ciudad", with: @reporte_incidente.ciudad
    fill_in "Distrito", with: @reporte_incidente.distrito
    fill_in "Estadopista", with: @reporte_incidente.estadoPista
    fill_in "Estadotrafico", with: @reporte_incidente.estadoTrafico
    fill_in "Provincia", with: @reporte_incidente.provincia
    fill_in "Region", with: @reporte_incidente.region
    fill_in "Tipo", with: @reporte_incidente.tipo
    click_on "Update Reporte incidente"

    assert_text "Reporte incidente was successfully updated"
    click_on "Back"
  end

  test "should destroy Reporte incidente" do
    visit reporte_incidente_url(@reporte_incidente)
    click_on "Destroy this reporte incidente", match: :first

    assert_text "Reporte incidente was successfully destroyed"
  end
end
