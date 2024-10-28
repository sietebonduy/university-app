class Student < ApplicationRecord
  belongs_to :group
  has_many :exams, dependent: :destroy
  delegate :faculty, to: :group
  delegate :department, to: :group

  scope :graduated, -> { where(graduated: true) }

  # scope :by_first_name, ->(first_name) { where('first_name ILIKE ?', "%#{first_name}%") if first_name.present? }
  # scope :by_last_name, ->(last_name) { where('last_name ILIKE ?', "%#{last_name}%") if last_name.present? }
  # scope :born_on, ->(date) { where('birth_date = ?', date) if date.present? }
  # scope :by_gender, ->(gender) { where(gender: gender) if gender.present? }
  # scope :by_group, ->(group_id) { where(group_id: group_id) if group_id.present? }
  # scope :by_faculty, ->(faculty_id) { joins(group: :faculty).where(faculties: { id: faculty_id }) if faculty_id.present? }
  # scope :by_course, ->(course) { where(course: course) if course.present? }
  # scope :by_min_scholarship, ->(amount) { where('scholarship_amount >= ?', amount) if amount.present? }
  # scope :with_children, -> { where(has_children: true) }
  # scope :with_scholarship, -> { where('scholarship_amount > ?', 0) }
  # scope :ordered_by_last_name, -> { order(last_name: :asc) }
  # scope :ordered_by_first_name, -> { order(first_name: :asc) }

  def full_name
    "#{last_name} #{first_name} #{patronymic}"
  end

  def has_scholarship
    scholarship_amount > 0
  end

  def self.ransackable_attributes(auth_object = nil)
    ["birth_date", "created_at", "first_name", "gender", "group_id", "has_children", "id", "last_name", "patronymic", "scholarship_amount", "updated_at", 'has_scholarship']
  end

  def self.ransackable_associations(auth_object = nil)
    ["group"]
  end
end
