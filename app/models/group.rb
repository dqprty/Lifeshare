class Group < ApplicationRecord
  has_many :group_users
  has_many :users, through: :group_users
  has_many :messages
  has_many :calendars, through: :group_calendars
  has_many :group_calendars

  validates :name, presence: true, uniqueness: true
end
