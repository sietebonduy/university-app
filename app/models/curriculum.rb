class Curriculum < ApplicationRecord
  belongs_to :discipline
  belongs_to :group
  belongs_to :class_type
  belongs_to :control_form
  belongs_to :teacher

  def self.ransackable_attributes(auth_object = nil)
    ['discipline_id', 'group_id', 'class_type_id', 'control_form_id', 'teacher_id', 'semester', 'hours']
  end

  def self.ransackable_associations(auth_object = nil)
    ['teacher', 'group', 'control_form', 'class_type']
  end
end
