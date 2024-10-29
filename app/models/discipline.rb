class Discipline < ApplicationRecord
  has_many :exams, dependent: :destroy
  has_many :curriculumes
end
