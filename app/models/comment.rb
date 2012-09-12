class Comment < ActiveRecord::Base
  attr_accessible :link_id, :user_id, :body
  belongs_to :commentable, :polymorphic => true
  has_many :comments, :as => :commentable


def link
  return @link if defined?(@link)
  @link = commentable.is_a?(Link) ? commentable : commentable.link
end

  
end

