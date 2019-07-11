class User < ApplicationRecord


  has_many :adventures
  
  has_many :paths, through: :adventures

  has_many :comments, dependent: :destroy

  validates_uniqueness_of :email

  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

  validates_presence_of :name, :email

  has_secure_password

end
