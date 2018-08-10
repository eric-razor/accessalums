class Student < ApplicationRecord
  has_many :projects
  has_many :pitches
  has_many :comments, through: :pitches
  has_secure_password
  has_one_attached :profile_picture
  validates :email, uniqueness: true
  validates_length_of :password, :in => 6..20
  before_save :sanitize_email


  def sanitize_email
    if self.email.nil?
      nil
    elsif !self.email.include?(".com")
      self.email = self.email + ".com"
      if !self.email.include?("htt")
        self.email = "http://" + self.email
      end
    elsif !self.email.include?("htt")
      self.email = "http://" + self.email
    end
  end

  # i need to when people put .com.com


end
