class AddColumnCities < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :map, :text
    add_column :cities, :facility, :text
    add_column :cities, :distance, :string
    add_column :cities, :url, :string
  end
end
