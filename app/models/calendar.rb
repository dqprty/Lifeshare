class Calendar < ApplicationRecord
  belongs_to :user
  has_many :groups, through: :group_calendars
  has_many :group_calendars
  has_many :messages

  validates :date, presence: true
end
