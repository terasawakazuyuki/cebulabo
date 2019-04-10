class CreateHotels < ActiveRecord::Migration[5.2]
  def change
    create_table :hotels do |t|
        t.string      :hotel_name_ja
        t.string      :hotel_name_en
        t.integer     :hotel_rank
        t.string      :hotel_area
        t.string      :hotel_image
        t.string      :hotel_image_text
      t.timestamps
    end
  end
end
