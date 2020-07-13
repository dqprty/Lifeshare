class GroupCalendar < ApplicationRecord
  belongs_to :group
  belongs_to :calendar
end
