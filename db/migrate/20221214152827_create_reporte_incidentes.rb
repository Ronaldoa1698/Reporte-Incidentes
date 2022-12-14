class CreateReporteIncidentes < ActiveRecord::Migration[7.0]
  def change
    create_table :reporte_incidentes do |t|
      t.string :tipo
      t.string :estadoPista
      t.string :estadoTrafico
      t.string :region
      t.string :provincia
      t.string :distrito
      t.string :ciudad

      t.timestamps
    end
  end
end
