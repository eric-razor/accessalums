class Student < ApplicationRecord
  has_many :projects
  has_many :pitches
  has_many :comments, through: :pitches
  has_secure_password
  mount_uploader :avatar, AvatarUploader
  serialize :avatar, JSON

end
#how do you know what can be named anything and when it can't?
#use css syntax example
