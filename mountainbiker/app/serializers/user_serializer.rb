class UserSerializer < ActiveModel::Serializer

  has_many :adventures
  has_many :paths, through: :adventures

  has_many :comments
  has_many :paths, through: :comments

  attributes :id, :name, :comments, :email, :password_digest, :image, :location, :created_at
end
