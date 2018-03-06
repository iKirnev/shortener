class Short < ApplicationRecord
  validates :url, :format => URI::regexp(%w(http https))

  validates :url, presence: true

  def self.make(url)
    self.where(url: url).first_or_create(unique_key: self.make_key)
  end

  
  def self.find(token)
  	short = self.where(unique_key: token).first
    short ? short.url : '/'
  end

  def self.make_key
    charset = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", 0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    (0...5).map{ charset[rand(charset.size)] }.join
  end

end