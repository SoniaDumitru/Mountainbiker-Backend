class Path < ApplicationRecord

  has_many :adventures
  has_many :users, through: :adventures

  has_many :comments, dependent: :destroy

end
