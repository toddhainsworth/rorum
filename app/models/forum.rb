class Forum < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 5, maximum: 70 }
  validates :desc, presence: true, length: { minimum: 10, maximum: 255 }
end
