class Student < ApplicationRecord
  belongs_to :group
  delegate :faculty, to: :group

  scope :by_first_name, ->(first_name) { where('first_name ILIKE ?', "%#{first_name}%") if first_name.present? }
  scope :by_last_name, ->(last_name) { where('last_name ILIKE ?', "%#{last_name}%") if last_name.present? }
  scope :born_on_or_after, ->(date) { where('birth_date >= ?', date) if date.present? }
  scope :by_gender, ->(gender) { where(gender: gender) if gender.present? }
  scope :by_group, ->(group_id) { where(group_id: group_id) if group_id.present? }
  scope :by_faculty, ->(faculty_id) { joins(group: :faculty).where(faculties: { id: faculty_id }) if faculty_id.present? }
  scope :by_course, ->(course) { where(course: course) if course.present? }
  scope :by_min_scholarship, ->(amount) { where('scholarship_amount >= ?', amount) if amount.present? }
  scope :with_children, -> { where(has_children: true) }
  scope :with_scholarship, -> { where(has_scholarship_amount: true) }
  scope :ordered_by_last_name, -> { order(last_name: :asc) }
  scope :ordered_by_first_name, -> { order(first_name: :asc) }
end
