class Mentor < ApplicationRecord
    mount_uploader :image, ImageUploader
    geocoded_by :location   # can also be an IP address
end
