class User < ActiveRecord::Base
  # Devise model work
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  #Validations -------------------;
  validates :name, presence: true
end
