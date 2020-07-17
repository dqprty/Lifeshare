class Message < ApplicationRecord
  belongs_to :user
  belongs_to :group
  belongs_to :calendar

  validates :content, presence: true, unless: :image?

  mount_uploader :image, ImageUploader
end
