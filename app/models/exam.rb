class Exam < ApplicationRecord
  belongs_to :student
  belongs_to :discipline
  belongs_to :teacher
end
