class Discipline < ApplicationRecord
  has_many :exams, dependent: :destroy
  has_many :curriculums, dependent: :destroy
  has_many :schedules
  belongs_to :department

  def self.ransackable_attributes(auth_object = nil)
    ['name']
  end

  def self.ransackable_associations(auth_object = nil)
    ['exams', 'curriculums', 'schedules', 'department']
  end
end
