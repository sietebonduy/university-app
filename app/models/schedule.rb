class Schedule < ApplicationRecord
  belongs_to :teacher
  belongs_to :group
  belongs_to :class_type
  belongs_to :discipline

  def self.ransackable_attributes(auth_object = nil)
    ['discipline_id', 'teacher_id', 'group_id', 'class_type_id', 'start_time']
  end

  def self.ransackable_associations(auth_object = nil)
    ['teacher', 'group', 'class_type', 'discipline']
  end
end
