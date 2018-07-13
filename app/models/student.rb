class Student < ApplicationRecord
  has_many :projects
  has_many :pitches
  has_many :comments, through: :pitches
  has_secure_password
  has_one_attached :profile_picture
  validates :email, uniqueness: true
  validates_length_of :password, :in => 6..20
end
#how do you know what can be named anything and when it can't?
#use css syntax example
