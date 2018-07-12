class Pitch < ApplicationRecord
  belongs_to :student
  has_many :comments
  validates :title, :content, presence: true
end
