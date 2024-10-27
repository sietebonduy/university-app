class Topic < ApplicationRecord
  include TopicLabels

  belongs_to :teacher
  belongs_to :department
  has_one :faculty, through: :department

  enum kind: { candidate_dissertation: 0, doctoral_dissertation: 1 }

  def humanized_kind
    KIND_LABELS[kind.to_sym] || 'Неизвестно'
  end

  def self.humanized_kinds
    kinds.keys.map { |k| [KIND_LABELS[k.to_sym], kinds[k]] }
  end

  def self.ransackable_attributes(auth_object = nil)
    ['pass_date', 'department_id']
  end

  def self.ransackable_associations(auth_object = nil)
    ['teacher', 'department', 'faculty']
  end
end
