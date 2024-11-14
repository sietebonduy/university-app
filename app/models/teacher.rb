class Teacher < ApplicationRecord
  include TeacherLabels

  has_many :topic
  has_many :exams
  has_many :schedules
  has_many :curriculums
  has_many :disciplines, through: :schedules
  belongs_to :department
  has_one :faculty, through: :department

  enum kind: { assistant: 0, associate_professor: 1, professor: 2, senior_lecturer: 3 }

  scope :thesis_advisors, -> { where("EXISTS (SELECT 1 FROM theses WHERE theses.teacher_id = teachers.id)") }
  scope :for_discipline, ->(discipline_id) { joins(schedules: :discipline).where(schedules: { discipline_id: discipline_id }) }
  scope :for_group, ->(group_id) { joins(schedules: :group).where(schedules: { group_id: group_id }) }
  scope :for_course, ->(course) { joins(schedules: :group).where(groups: { course: course }) }
  scope :for_faculty, ->(faculty_id) { joins(schedules: :group).where(groups: { faculty_id: faculty_id }) }

  def full_name
    "#{last_name} #{first_name} #{patronymic}"
  end

  def humanized_kind
    KIND_LABELS[kind.to_sym] || 'Неизвестно'
  end

  def self.humanized_kinds
    kinds.keys.map { |k| [KIND_LABELS[k.to_sym], kinds[k]] }
  end

  def self.ransackable_attributes(auth_object = nil)
    ['birth_date', 'kind', 'created_at', 'department_id', 'first_name', 'gender', 'has_children', 'has_phd', 'last_name', 'number_of_children', 'patronymic', 'salary']
  end

  def self.ransackable_associations(auth_object = nil)
    ['department', 'faculty', 'topic', 'schedule', 'exams', 'curriculums']
  end
end
