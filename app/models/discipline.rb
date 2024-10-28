class Discipline < ApplicationRecord
  has_many :exams, dependent: :destroy
end
