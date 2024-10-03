class Topic < ApplicationRecord
  belongs_to :teacher
  belongs_to :department
end
