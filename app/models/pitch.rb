class Pitch < ApplicationRecord
  belongs_to :student
  has_many :comments
end
