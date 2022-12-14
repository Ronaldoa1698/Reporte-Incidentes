json.extract! reporte_incidente, :id, :tipo, :estadoPista, :estadoTrafico, :region, :provincia, :distrito, :ciudad, :created_at, :updated_at
json.url reporte_incidente_url(reporte_incidente, format: :json)
