class Post < ActiveRecord::Base
    mount_uploader :image, ImageUploader
    self.per_page = 10
end
