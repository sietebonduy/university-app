class Thesis < ApplicationRecord
  belongs_to :student
  belongs_to :teacher

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "pass_date", "student_id", "teacher_id", "title", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["student", "teacher"]
  end
end
