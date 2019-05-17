class AddColumnOthers < ActiveRecord::Migration[5.2]
  def change
    add_column :others, :map, :text
    add_column :others, :facility, :text
    add_column :others, :distance, :string
    add_column :others, :url, :string
    add_column :others, :hotel_comment, :text
  end
end
