class CommentSerializer < ActiveModel::Serializer

  belongs_to :user
  belongs_to :path

  attributes :id, :user_id, :path_id, :content, :created_at

end
