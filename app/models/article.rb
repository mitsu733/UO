class Article < ApplicationRecord
  mount_uploader :image, ImageUploader

  enum category: { app: 0, illust: 1}
end
