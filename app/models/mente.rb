class Mente < ApplicationRecord
    mount_uploader :image, ImageUploader

    geocoded_by :location   # can also be an IP address
    after_validation :geocode
end
