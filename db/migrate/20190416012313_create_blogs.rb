class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :blog_title
      t.string :blog_image
      t.text :blog_text

      t.timestamps
    end
  end
end
