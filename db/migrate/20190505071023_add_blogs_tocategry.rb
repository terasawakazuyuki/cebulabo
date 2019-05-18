class AddBlogsTocategry < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :blog_category, :string
  end
end
