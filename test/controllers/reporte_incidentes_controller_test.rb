require "test_helper"

class ReporteIncidentesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reporte_incidente = reporte_incidentes(:one)
  end

  test "should get index" do
    get reporte_incidentes_url
    assert_response :success
  end

  test "should get new" do
    get new_reporte_incidente_url
    assert_response :success
  end

  test "should create reporte_incidente" do
    assert_difference("ReporteIncidente.count") do
      post reporte_incidentes_url, params: { reporte_incidente: { ciudad: @reporte_incidente.ciudad, distrito: @reporte_incidente.distrito, estadoPista: @reporte_incidente.estadoPista, estadoTrafico: @reporte_incidente.estadoTrafico, provincia: @reporte_incidente.provincia, region: @reporte_incidente.region, tipo: @reporte_incidente.tipo } }
    end

    assert_redirected_to reporte_incidente_url(ReporteIncidente.last)
  end

  test "should show reporte_incidente" do
    get reporte_incidente_url(@reporte_incidente)
    assert_response :success
  end

  test "should get edit" do
    get edit_reporte_incidente_url(@reporte_incidente)
    assert_response :success
  end

  test "should update reporte_incidente" do
    patch reporte_incidente_url(@reporte_incidente), params: { reporte_incidente: { ciudad: @reporte_incidente.ciudad, distrito: @reporte_incidente.distrito, estadoPista: @reporte_incidente.estadoPista, estadoTrafico: @reporte_incidente.estadoTrafico, provincia: @reporte_incidente.provincia, region: @reporte_incidente.region, tipo: @reporte_incidente.tipo } }
    assert_redirected_to reporte_incidente_url(@reporte_incidente)
  end

  test "should destroy reporte_incidente" do
    assert_difference("ReporteIncidente.count", -1) do
      delete reporte_incidente_url(@reporte_incidente)
    end

    assert_redirected_to reporte_incidentes_url
  end
end
