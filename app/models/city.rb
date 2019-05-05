class City < ApplicationRecord
  mount_uploader :hotel_image, BlogImageUploader
end
