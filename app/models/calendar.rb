class Calendar < ApplicationRecord
  belongs_to :user
  belongs_to :group
  has_one :message

  validates :date, presence: true
end
