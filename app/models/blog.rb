class Blog < ActiveRecord::Base
  mount_uploader :blog_image, BlogImageUploader
end
