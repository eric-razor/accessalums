class Student < ApplicationRecord
  has_many :projects
  has_many :pitches
  has_many :comments, through: :pitches
end
