class Department < ApplicationRecord
  belongs_to :faculty
  has_many :teachers, dependent: :destroy
  has_many :disciplines, dependent: :destroy
  has_many :groups

  # scope :schedule_by_group, -> (group_id) { where()}

  def self.ransackable_attributes(auth_object = nil)
    ['created_at', 'faculty_id', 'id', 'name', 'updated_at']
  end
end
