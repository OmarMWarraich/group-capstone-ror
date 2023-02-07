class ChangeColumnMeasurementTime < ActiveRecord::Migration[7.0]
  def change
    change_column :foods, :measurementUnit, :string
  end
end
