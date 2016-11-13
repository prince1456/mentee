class Mente < ApplicationRecord
    mount_uploader :image, ImageUploader
    has_secure_password
    geocoded_by :location   # can also be an IP address
    after_validation :geocode

    has_many :likes, dependent: :destroy
    has_many :liked_mentors, through: :likes, source: :mentor

    validates :email, presence:   true
    validates :name, presence:   true
    def full_name
      "#{first_name} #{last_name}"
    end

    def like_for(mente)
      likes.find_by_user_id(mente)
    end
end
