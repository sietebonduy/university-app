class Student < ApplicationRecord
  belongs_to :group
  has_many :exams, dependent: :destroy
  delegate :faculty, to: :group
  delegate :department, to: :group

  scope :graduated, -> { where(graduated: true) }
  scope :excellent_grades, -> { joins(:exams).where(exams: { grade: 5 }) }
  scope :without_bad_grades, -> { joins(:exams).where.not(exams: { grade: [2, 3] }) }
  scope :without_ungraded, -> { joins(:exams).where.not(exams: { grade: 2 }) }

  def full_name
    "#{last_name} #{first_name} #{patronymic}"
  end

  def has_scholarship
    scholarship_amount > 0
  end

  def self.ransackable_attributes(auth_object = nil)
    ["birth_date", "created_at", "first_name", "gender", "group_id", "has_children", "id", "last_name", "patronymic", "scholarship_amount", "updated_at", 'has_scholarship', 'without_bad_grades', 'without_ungraded', 'excellent_grades', 'start_date', 'end_date']
  end

  def self.ransackable_associations(auth_object = nil)
    ['group', 'exams']
  end
end
