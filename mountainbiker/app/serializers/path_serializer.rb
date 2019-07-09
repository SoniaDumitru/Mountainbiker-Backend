class PathSerializer < ActiveModel::Serializer

  has_many :adventures
  has_many :users, through: :adventures

  has_many :comments
  has_many :users, through: :comments

  attributes :id, :name, :type, :summary, :difficulty, :stars, :starVotes, :location, :imgSqSmall, :imgSmall, :imgSmallMed, :imgMedium, :length, :ascent, :descent, :high, :low, :longitude, :latitude, :conditionStatus, :conditionDetails, :conditionDate
  
end
