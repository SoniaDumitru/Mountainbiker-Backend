class User < ApplicationRecord


  has_many :adventures
  has_many :paths, through: :adventures

  has_many :comments, dependent: :destroy

  has_secure_password

end
