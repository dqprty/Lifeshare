class Calendar < ApplicationRecord
  belongs_to :user
  belongs_to :group
  has_many :messages

  validates :date, presence: true
end
