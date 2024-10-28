class Teacher < ApplicationRecord
  include TeacherLabels

  belongs_to :department
  has_one :faculty, through: :department
  has_many :topic
  has_many :exams

  enum kind: { assistant: 0, associate_professor: 1, professor: 2, senior_lecturer: 3 }

  scope :thesis_advisors, -> { where("EXISTS (SELECT 1 FROM theses WHERE theses.teacher_id = teachers.id)") }

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
    ['department', 'faculty', 'topic']
  end
end
