class Mentor < ApplicationRecord
    mount_uploader :image, ImageUploader
    geocoded_by :location   # can also be an IP address
    after_validation :geocode

    validates :email, presence:   true
    validates :name, presence:   true

    has_many :likes, dependent: :destroy
    has_many :mentes, through: :likes
    #
    # def like_for(mentor)
    #     likes.find_by_user_id(mentor)
    #   end
end
