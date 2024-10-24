class Faculty < ApplicationRecord
  has_many :groups
  has_many :students, through: :groups
  has_many :departments, dependent: :destroy
  has_many :teachers, through: :departments
end
