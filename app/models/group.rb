class Group < ApplicationRecord
  belongs_to :faculty
  belongs_to :department
  has_many :students

  enum course: { '1': 1, '2': 2, '3': 3, '4': 4, '5': 5, '6': 6, '7': 7, '8': 8}

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "enrollment_year", "faculty_id", "id", "name", "updated_at", 'course']
  end

  def self.ransackable_associations(auth_object = nil)
    ["faculty", "students"]
  end
end
