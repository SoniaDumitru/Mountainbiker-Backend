class Comment < ApplicationRecord

  belongs_to :user, optional: true
  belongs_to :path, optional: true

end
