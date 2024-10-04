class Curriculum < ApplicationRecord
  belongs_to :discipline
  belongs_to :group
  belongs_to :class_type
  belongs_to :control_form
end
