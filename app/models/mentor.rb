class Mentor < ApplicationRecord
    mount_uploader :image, ImageUploader
    geocoded_by :full_street_address   # can also be an IP address
    after_validation :geocode  
end
