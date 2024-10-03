class Exam < ApplicationRecord
  belongs_to :student
  belongs_to :discipline
end
