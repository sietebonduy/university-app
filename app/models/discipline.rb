class Discipline < ApplicationRecord
  has_many :exams, dependent: :destroy
  has_many :curriculumes
  has_many :schedules
  belongs_to :department
end
