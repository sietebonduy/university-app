class Schedule < ApplicationRecord
  belongs_to :teacher
  belongs_to :group
  belongs_to :class_type
  belongs_to :discipline
end
