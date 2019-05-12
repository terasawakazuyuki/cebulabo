class Cities < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :hotel_comment, :text
  end
end
