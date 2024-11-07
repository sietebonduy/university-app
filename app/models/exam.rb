class Exam < ApplicationRecord
  belongs_to :student
  belongs_to :discipline
  belongs_to :teacher

  def self.ransackable_attributes(auth_object = nil)
    ['grade', 'discipline_id', 'teacher_id', 'student_id', 'course', 'semester', 'pass_date']
  end

  def self.ransackable_associations(auth_object = nil)
    ['student', 'discipline']
  end
end
