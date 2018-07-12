class Project < ApplicationRecord
  belongs_to :student
  before_save :sanitize_website

  def sanitize_website
    if self.url_link.nil?
      nil
    elsif !self.url_link.include?(".com")
      self.url_link = self.url_link + ".com"
      if !self.url_link.include?("htt")
        self.url_link = "http://" + self.url_link
      end
    elsif !self.url_link.include?("htt")
      self.url_link = "http://" + self.url_link
    end
  end

end
