class AdventureSerializer < ActiveModel::Serializer

  belongs_to :user
  belongs_to :path

  attributes :id, :user_id, :path_id, :created_at, :name, :location, :image, :summary, :length

end
