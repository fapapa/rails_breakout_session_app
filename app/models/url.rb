class Url < ApplicationRecord
  validates :long_url, uniqueness: true
  validates :long_url, presence: true
  before_save :generate_short_url
  def generate_short_url
    self.short_url = SecureRandom.hex(3)
  end
end
