class Group < ApplicationRecord
  belongs_to :faculty
  has_many :students
end
