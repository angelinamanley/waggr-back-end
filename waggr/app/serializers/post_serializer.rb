class PostSerializer < ActiveModel::Serializer
  attributes :id, :content, :user, :created_at
  belongs_to :user
  belongs_to :group
end
